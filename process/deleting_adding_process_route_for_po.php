<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$data_previously_saved = "No";
$data_deleteion_hampering = "No";


$po_id=$_POST['po_id'];
$po_details_id=$_POST['po_details_id'];


mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error());


/*
	$delete_sql_statement="DELETE FROM `adding_process_route_for_po` WHERE `po_id`='$po_id'";

   */
	$delete_sql_statement="DELETE FROM `adding_process_route_for_po` WHERE `po_id`='$po_id' and `po_details_id`='$po_details_id'";
	

	 mysqli_query($con,$delete_sql_statement) or die(mysqli_error($con));

	 
	 

	if(mysqli_affected_rows($con)<>1)
	{
	    
		$data_deleteion_hampering = "No";
	
	}

if($data_deleteion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Successfully Deleted.";


}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Data Is Not  Deleted.";
 
}

$obj->disconnection();

?>
