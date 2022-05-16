<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$data_previously_saved = "No";
$data_insertion_hampering = "No";
/*$user_name ="Iftekhar";
$user_id ="Iftekhar";
$password ="1234";*/

$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$user_name = $_SESSION['user_name'];

$po_number= $_POST['po_number'];

$splitted_customer= explode("?fs?",$po_number);
$po_number=$splitted_customer[0];
$po_id=$splitted_customer[1];

$measurement_of_carton_length= $_POST['measurement_of_carton_length'];
$measurement_of_carton_width= $_POST['measurement_of_carton_width'];
$measurement_of_cartoon_height= $_POST['measurement_of_cartoon_height'];
$measurement_of_cartoon_ply= $_POST['measurement_of_cartoon_ply'];

/*********************Product Description****************************/

$paper_type_linear= $_POST['paper_type_linear'];
$paper_type_medium= $_POST['paper_type_medium'];
$paper_type_medium_1= $_POST['paper_type_medium_1'];
$paper_type_medium_2= $_POST['paper_type_medium_2'];
$paper_type_linear_1= $_POST['paper_type_linear_1'];
$flute_type="";
if(!empty($_POST['flute_type']))
{
    foreach($_POST['flute_type'] as $flute_type_value)
    {
      $flute_type.= $flute_type_value. ",";
    }
    
}

$printing_status=$_POST['printing_status'];

$dye_cutting= $_POST['dye_cutting'];


/*********************Process Description*************************/

$carton_quantity= $_POST['carton_quantity'];
$cutter_size= $_POST['cutter_size'];

$ratio= $_POST['ratio'];
$cutting_ratio= $_POST['cutting_ratio'];
$board_quantity= $_POST['board_quantity'];
$roll_size= $_POST['roll_size'];
$score_or_creez_size= $_POST['score_or_creez_size'];
$score_or_creez_size_1= $_POST['score_or_creez_size_1'];
$score_or_creez_size_2= $_POST['score_or_creez_size_2'];
$slotting_size= $_POST['slotting_size'];
$slotting_size_1= $_POST['slotting_size_1'];
$slotting_size_2= $_POST['slotting_size_2'];
$slotting_size_3= $_POST['slotting_size_3'];



mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error());

// $select_sql_for_duplicacy="select * from `po_creation` where `po_number`='$po_number'";

// $result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error());

// if(mysqli_num_rows($result)>0)
// {

// 	$data_previously_saved="Yes";

// }
// else if( mysqli_num_rows($result) < 1)
// {
    // $select_sql_max_primary_key="select MAX(max_po_id) as max_po_id FROM (select CONVERT(substring(po_id,4,LENGTH(po_id)),UNSIGNED) as max_po_id from po_details) as temp_po_id_table"; //converted into string and find max

    // $result_for_max_primary_key = mysqli_query($con,$select_sql_max_primary_key) or die(mysqli_error($con));
    
    // $row_for_max_primary_key = mysqli_fetch_array($result_for_max_primary_key);

    // $row_id=$row_for_max_primary_key['max_po_id']+1;

    // if($row_for_max_primary_key['max_po_id']==0)
    // {

    // 	$current_po_id='po_1';

    // }
    // else
    // {

    // 	$current_po_id ="po_".($row_for_max_primary_key['max_po_id']+1);

    // }



$select_sql_for_duplicacy="select * from `po_details` where `po_number`='$po_number' and `measurement_of_carton_length`='$measurement_of_carton_length' and `measurement_of_carton_width`='$measurement_of_carton_width' and `measurement_of_cartoon_height`='$measurement_of_cartoon_height' ";

$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));

if(mysqli_num_rows($result)>0)
{

	$data_previously_saved="Yes";

}
else if( mysqli_num_rows($result) < 1)
{

$select_sql_max_primary_key="select MAX(max_po_details_id) as max_po_details_id FROM (select CONVERT(substring(po_details_id,5,LENGTH(po_details_id)),UNSIGNED) as max_po_details_id from po_details) as temp_po_details_id_table"; //converted into string and find max

    $result_for_max_primary_key = mysqli_query($con,$select_sql_max_primary_key) or die(mysqli_error($con));
    
    $row_for_max_primary_key = mysqli_fetch_array($result_for_max_primary_key);

    $row_id=$row_for_max_primary_key['max_po_details_id']+1;

    if($row_for_max_primary_key['max_po_details_id']==0)
    {

    	$current_po_details_id='pod_1';

    }
    else
    {

    	$current_po_details_id ="pod_".($row_for_max_primary_key['max_po_details_id']+1);

    }

	$insert_sql_statement="insert into `po_details` 
	                        (
	                        `po_id`,
	                        `po_details_id`,
	                        `po_number`,

	                        `measurement_of_carton_length`,
	                        `measurement_of_carton_width`,
	                        `measurement_of_cartoon_height`,
	                        `measurement_of_cartoon_ply`,

	                        `paper_type_linear`,
	                        `paper_type_medium`,
	                        `paper_type_medium_1`,
	                        `paper_type_medium_2`,
	                        `paper_type_linear_1`,
	                        `flute_type`,
	                        `printing_status`,
	                        `dye_cutting`,


	                        `carton_quantity`,
	                        `ratio`,
	                        `cutting_ratio`,
	                        `board_quantity`,
	                        `cutter_size`,
	                        `roll_size`,
	                        `score_or_creez_size`,
	                        `score_or_creez_size_1`,
	                        `score_or_creez_size_2`,
	                        `slotting_size`,
	                        `slotting_size_1`,
	                        `slotting_size_2`,
	                        `slotting_size_3`,
	                       

	                        `recording_person_id`,
	                        `recording_person_name`,
	                        `recording_time` ) 
	                        values 
	                        (
	                        '$po_id',
	                        '$current_po_details_id',
	                        '$po_number',

	                        '$measurement_of_carton_length',
	                        '$measurement_of_carton_width',
	                        '$measurement_of_cartoon_height',
	                        '$measurement_of_cartoon_ply',

	                        '$paper_type_linear',
	                        '$paper_type_medium',
	                        '$paper_type_medium_1',
	                        '$paper_type_medium_2',
	                        '$paper_type_linear_1',
	                        '$flute_type',
	                        '$printing_status',
	                        '$dye_cutting',


	                        '$carton_quantity',
	                        '$ratio',
	                        '$cutting_ratio',
	                        '$board_quantity',
	                        '$cutter_size',
	                        '$roll_size',
	                        '$score_or_creez_size',
	                        '$score_or_creez_size_1',
	                        '$score_or_creez_size_2',
	                        '$slotting_size',
	                        '$slotting_size_1',
	                        '$slotting_size_2',
	                        '$slotting_size_3',
	                        
	                        
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
