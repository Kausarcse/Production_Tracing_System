<?php

include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

$po_id=$_POST['po_id'];
$po_details_id=$_POST['po_details_id'];

$option='<option value="select" selected="selected">Select Process Name</option>';

		 $sql = "select DISTINCT process_name, process_id from `adding_process_route_for_po` where po_id='$po_id' and po_details_id = '$po_details_id' ";
		 
		 echo $sql;
		 $result= mysqli_query($con,$sql) or die(mysqli_error());

		 while( $row = mysqli_fetch_array( $result))
		 {    
             $split_process_name=explode("-", $row['process_name']);
		      $process_name_spliteed=$split_process_name[0];


            

                      if($process_name_spliteed=="Re")
                      {
                          
                      	$option=$option.'<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
                      }
		 }
	
		 echo $option;


?>