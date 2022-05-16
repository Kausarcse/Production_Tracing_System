<?php
session_start();
error_reporting(0);
// Returniing Machine name By Process name
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

$process_id=$_POST['process_id'];
$travel_card_id=$_POST['travel_card_id'];

                 
$sql = "SELECT tcdft.process_quantity
          FROM travel_card_details_for_transactions tcdft
		   WHERE tcdft.process_id='".$process_id."' AND tcdft.travel_card_id='".$travel_card_id."'";
 

 $result= mysqli_query($con,$sql) or die(mysqli_error($con));

 while( $row = mysqli_fetch_array( $result))
 {    
 	
  	$option = $row['process_quantity'];

 }

  echo $option;


?>