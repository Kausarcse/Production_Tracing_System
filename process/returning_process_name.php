<?php
error_reporting(0);
session_start();
require_once("../login/session.php");

include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();
 $user_access =$_SESSION['user_access'];

$po_id=$_POST['po_id'];
$po_details_id=$_POST['po_details_id'];

$option='';

		 $sql = "select DISTINCT process_name, process_id from `adding_process_route_for_po` where po_id='$po_id' and po_details_id = '$po_details_id' ";
		 
		 
		 $result= mysqli_query($con,$sql) or die(mysqli_error());

		 while( $row = mysqli_fetch_array( $result))
		 {    
              $split_process_name=explode("-", $row['process_name']);
		      $process_name_spliteed=$split_process_name[0];


            

                      if($process_name_spliteed=="Re")
                      {
                          
                      	
                      }
                      else
                      { 
                       

                      	if($user_access==$row['process_id'])
													{  
                                                      $option=$option.'<option value="'.$row['process_name']."?fs?".$row['process_id'].'" selected>'.$row['process_name'].'</option>';
													}


						 elseif($user_access=='N/A')
													{  echo "yes";
                                                      $option=$option.'<option value="'.$row['process_name']."?fs?".$row['process_id'].'" selected>'.$row['process_name'].'</option>';
													}
													/*elseif($user_access=="Die Cutting"){
                                                        $option=$option.'<option value="'."Die Cutting"."?fs?"."proc_2".'">'.$row['process_name'].'</option>';
													}
													elseif($user_access=="Auto Flexo Printing"){

														 $option=$option.'<option value="'."Die Cutting"."?fs?"."proc_2".'">'.$row['process_name'].'</option>';

													}
													elseif ($user_access=="Screen Printing") {
														# code...
													}

													elseif ($user_access=="Cutting Creasing") {
														# code...

													}*/
                            //$option=$option.'<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
                      }
													/*elseif($user_access=="Die Cutting"){
                                                        $option=$option.'<option value="'."Die Cutting"."?fs?"."proc_2".'">'.$row['process_name'].'</option>';
													}
													elseif($user_access=="Auto Flexo Printing"){

														 $option=$option.'<option value="'."Die Cutting"."?fs?"."proc_2".'">'.$row['process_name'].'</option>';

													}
													elseif ($user_access=="Screen Printing") {
														# code...
													}

													elseif ($user_access=="Cutting Creasing") {
														# code...

													}*/
                            //$option=$option.'<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
                    
                     
		 }
	
		 echo $option;


?>