<?php
// session_start();
// require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$data_previously_saved = "No";
$data_deleteion_hampering = "No";

$value_for_travel_card = $_POST['value_for_travel_card'];
 

 $split_data_for_travel_card=explode("?fs?", $value_for_travel_card );

 $travel_card_id=$split_data_for_travel_card[0];
 $po_id=$split_data_for_travel_card[1];
 $po_details_id=$split_data_for_travel_card[2];
 $process_id=$split_data_for_travel_card[3];




mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));



	$delete_sql_statement="DELETE FROM `travel_card_details_for_transactions` WHERE `travel_card_id`='$travel_card_id' and `po_id`='$po_id' and `po_details_id`='$po_details_id' and `process_id`='$process_id'";



	mysqli_query($con,$delete_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_deleteion_hampering = "Yes";
	
	}

if($data_deleteion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Successfully Deleted.";

	


}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Is not successfully Deleted.";

}

$obj->disconnection();

?>