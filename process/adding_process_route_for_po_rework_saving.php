<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

error_reporting(0);

$data_previously_saved = "No";
$data_insertion_hampering = "No";
/*$user_name ="Iftekhar";
$user_id ="Iftekhar";
$password ="1234";*/

$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$user_name = $_SESSION['user_name'];

$po_number= $_POST['po_number'];
$split_po_number=explode('?fs?', $po_number);
$po_number=$split_po_number[0];
$po_id=$split_po_number[1];

$po_details_id = $_POST['po_details'];


$possible_number_of_process = '50';
//echo $possible_number_of_process;
//exit;

$temp_process_name="1";

mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error());



$select_sql_for_duplicacy="select * from `adding_process_route_for_po` where `po_details_id`='$po_details_id' and `po_number`='$po_number'";

$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));





if(mysqli_num_rows($result)> 0)
{   

  
	 for($i=1;$i<=15;$i++)
 {
	
	$process_name = "process_name_".$i;

	//$process_name = $_POST[$process_name];
		  
	//echo $process_name;
		  	  
	$process_serial_no = "process_serial_".$i;

	$process_or_rework_no = "process_or_rework_".$i;
    $process_or_rework_no;
	
	//$process_serial_no = $_POST[$process_serial_no]; 
	 
	if(isset($_POST[$process_name]) && isset($_POST[$process_serial_no]) && $_POST[$process_or_rework_no]) 
	{   

		    $process_name = $_POST[$process_name];
            $process_serial_no = $_POST[$process_serial_no];
		    $process_or_rework = $_POST[$process_or_rework_no];
		  

		    $splitted_process_name =explode('?fs?', $process_name);


	          if($process_or_rework=='re-work')
			  {
			     $process_name="Re-".$splitted_process_name[0];
			     $process_id=$splitted_process_name[1];
			  }
		    
		  
           
		  //if(!empty($process_name))
		  if(isset($process_id))
		  {   
			  $insert_sql_statement="insert into `adding_process_route_for_po` ( 
			  `po_id`,
			  `po_number`,
			  `po_details_id`,
			  `process_id`,
			  `process_name`,
			  `process_serial_no`,
			  `process_or_reprocess`,
			  `checking_field`,
			  `recording_person_id`,
			  `recording_person_name`,
			  `recording_time` ) 
			  values 
			  (
			  '$po_id',
			  '$po_number',
			  '$po_details_id',
			  '$process_id',
			  '$process_name',
			  '$process_serial_no',
			  '$process_or_rework',
			  '$temp_process_name',
			  '$user_id',
			  '$user_name',
			  NOW())";
			  /*echo $insert_sql_statement;*/
			  mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));
			  
		  } // End of if(!empty($process_name))

	}	  
	
 }
	

}

else if( mysqli_num_rows($result)==0)
{
	

   $data_previously_saved="Yes";


}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "Process for This Version is Already Defined.";

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
