<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$data_previously_saved = "No";
$data_insertion_hampering = "No";


$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$user_name = $_SESSION['user_name'];

$travel_card_creation_date= $_POST['travel_card_creation_date'];
$travel_card_id= $_POST['travel_card_id'];
$before_process_quantity= $_POST['before_process_quantity'];
$process_quantity= $_POST['process_quantity'];
$actual_ratio= $_POST['actual_ratio'];
$actual_roll_size= $_POST['actual_roll_size'];
$process_wastage= $_POST['process_wastage'];


$process_name= $_POST['process_name'];
$split_process_name=explode("?fs?", $process_name);
$process_name=$split_process_name[0];
$process_id=$split_process_name[1];

 $po_number= $_POST['po_number'];
 $po_id= $_POST['po_id'];

$today_date=date("d-m-Y");



$po_details_id= $_POST['po_details_id'];

$liner_consumption_calc= $_POST['liner_consumption_calc'];
$media_consumption_calc= $_POST['media_consumption_calc'];
$sqm_consumption_calc= $_POST['sqm_consumption_calc'];
$total_consumption= $_POST['total_consumption'];



mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error());

$select_sql_for_duplicacy="select * from `travel_card_details` where `travel_card_id`='$travel_card_id' and `process_id`='$process_id' and `process_name`='$process_name'";

$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error());

if(mysqli_num_rows($result)>0)
{
    


}
else if( mysqli_num_rows($result) < 1)
{
    
        $update_sql_statement="UPDATE `travel_card_details` SET `process_id`='$process_id',`process_name`='$process_name',`before_process_quantity`= '$before_process_quantity',`process_quantity`='$process_quantity',`actual_ratio`='$actual_ratio',`actual_roll_size`='$actual_roll_size',`recording_person_id`='$user_id',`recording_person_name`='$user_name',`recording_time`=NOW() WHERE `travel_card_id`='$travel_card_id'";

	mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));

	
	/*$data_previously_saved="Yes";*/

	/***********************************Checking travel_card_details_for_transactions***************************************************/

				    $select_sql_for_duplicacy_for_transaction_table="select * from `travel_card_details_for_transactions` where `travel_card_id`='$travel_card_id' and process_id='$process_id' and process_name='$process_name' and before_process_quantity='$before_process_quantity'";

					$result_for_transaction_table = mysqli_query($con,$select_sql_for_duplicacy_for_transaction_table) or die(mysqli_error());

					if(mysqli_num_rows($result_for_transaction_table)>0)
					{
                       $data_previously_saved="Yes";
					}
					else if( mysqli_num_rows($result_for_transaction_table) < 1)
					{

							$insert_sql_statement="insert into `travel_card_details_for_transactions` 
		                        (
		                    
		                        `travel_card_creation_date`,
		                        `travel_card_id`,
		                        `po_id`,
		                        `po_details_id`,

		                        `liner_consumption_calc`,
		                        `media_consumption_calc`,
		                        `sqm_consumption_calc`,
		                        `total_consumption`,

		                        `process_id`,
		                        `process_name`,
		                        `before_process_quantity`,
		                        `process_quantity`,
		                        `actual_ratio`,
		                        `actual_roll_size`,
		                        `process_wastage`,
		                        

		                        `recording_person_id`,
		                        `recording_person_name`,
		                        `recording_time` ) 
		                        values 
		                        (
		                       
		                        '$today_date',
		                        '$travel_card_id',
		                        '$po_id',
		                        '$po_details_id',


		                        '$liner_consumption_calc',
		                        '$media_consumption_calc',
		                        '$sqm_consumption_calc',
		                        '$total_consumption',

		                        '$process_id',
		                        '$process_name',
		                        '$before_process_quantity',
		                        '$process_quantity',
		                        '$actual_ratio',
		                        '$actual_roll_size',
		                        '$process_wastage',
		                        
		                        '$user_id',
		                        '$user_name',
		                        NOW())";

							mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));

							if(mysqli_affected_rows($con)<>1)
							{
							
								$data_insertion_hampering = "Yes";
							
							}

					}
			/***********************************End Checking travel_card_details_for_transactions***************************************************/
	
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is previously saved.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Data is successfully saved.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is not successfully saved.";

}

$obj->disconnection();

?>
