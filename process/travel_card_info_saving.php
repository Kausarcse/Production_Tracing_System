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


$po_number= $_POST['po_number'];

$splitted_customer= explode("?fs?",$po_number);
$po_number=$splitted_customer[0];
$po_id=$splitted_customer[1];

$po_details_id= $_POST['po_details_id'];

$liner_consumption_calc= $_POST['liner_consumption_calc'];
$media_consumption_calc= $_POST['media_consumption_calc'];
$sqm_consumption_calc= $_POST['sqm_consumption_calc'];
$total_consumption= $_POST['total_consumption'];



mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error());

$select_sql_for_duplicacy="select * from `travel_card_details` where `po_id`='$po_id' and `po_details_id`='$po_details_id'";

$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error());

if(mysqli_num_rows($result)>0)
{

	$data_previously_saved="Yes";

}
else if( mysqli_num_rows($result) < 1)
{
    $select_sql_max_primary_key="select MAX(max_travel_card_id) as max_travel_card_id FROM (select CONVERT(substring(travel_card_id,8,LENGTH(travel_card_id)),UNSIGNED) as max_travel_card_id from travel_card_details) as temp_travel_card_id_table"; //converted into string and find max

    $result_for_max_primary_key = mysqli_query($con,$select_sql_max_primary_key) or die(mysqli_error($con));
    
    $row_for_max_primary_key = mysqli_fetch_array($result_for_max_primary_key);

    $row_id=$row_for_max_primary_key['max_travel_card_id']+1;

    if($row_for_max_primary_key['max_travel_card_id']==0)
    {

    	$current_travel_card_id='ZZALTC_1';

    }
    else
    {

    	$current_travel_card_id ="ZZALTC_".($row_for_max_primary_key['max_travel_card_id']+1);

    }

	$insert_sql_statement="insert into `travel_card_details` 
	                        (
	                        `travel_card_creation_date`,
	                        `travel_card_id`,
	                        `po_id`,
	                        `po_details_id`,

	                        `liner_consumption_calc`,
	                        `media_consumption_calc`,
	                        `sqm_consumption_calc`,
	                        `total_consumption`,
	                        

	                        `recording_person_id`,
	                        `recording_person_name`,
	                        `recording_time` ) 
	                        values 
	                        (
	                        '$travel_card_creation_date',
	                        '$current_travel_card_id',
	                        '$po_id',
	                        '$po_details_id',


	                        '$liner_consumption_calc',
	                        '$media_consumption_calc',
	                        '$sqm_consumption_calc',
	                        '$total_consumption',
	                        
	                        '$user_id',
	                        '$user_name',
	                        NOW())";

	mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_insertion_hampering = "Yes";
	
	}
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
