

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




  $po_details_id = $_POST['po_details_id'];
  $po_number = $_POST['po_number'];
  $product_category = $_POST['product_category'];

  if($product_category == 'CARTON')
  {

    $measurement_of_carton_length= $_POST['measurement_of_carton_length'];
    $measurement_of_carton_width= $_POST['measurement_of_carton_width'];
    $measurement_of_cartoon_height= $_POST['measurement_of_cartoon_height'];
    $measurement_of_cartoon_ply= $_POST['measurement_of_cartoon_ply'];

    /*********************Product Description****************************/



    $paper_type_linear = $_POST['paper_type_linear'];
    $paper_type_medium = $_POST['paper_type_medium'];
    $paper_type_medium_1 = $_POST['paper_type_medium_1'];
    $paper_type_medium_2 = $_POST['paper_type_medium_2'];
    $paper_type_linear_1 = $_POST['paper_type_linear_1'];


    $slotting_size = $_POST['slotting_size'];
    $slotting_size_1 = $_POST['slotting_size_1'];
    $slotting_size_2 = $_POST['slotting_size_3'];
    $slotting_size_3 = $_POST['slotting_size_3'];

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
    $board_quantity= $_POST['board_quantity'];
    $roll_size= $_POST['roll_size'];
    $score_or_creez_size = $_POST['score_or_creez_size'];
    $score_or_creez_size_1 = $_POST['score_or_creez_size_1'];
    $score_or_creez_size_2 = $_POST['score_or_creez_size_2'];
    $cutting_ratio = 0;


  }
  else{


    $measurement_of_carton_length= $_POST['measurement_of_carton_length'];
    $measurement_of_carton_width= $_POST['measurement_of_carton_width'];
    $measurement_of_cartoon_height= 0;
    $measurement_of_cartoon_ply= $_POST['measurement_of_cartoon_ply'];

    /*********************Product Description****************************/



    $paper_type_linear = $_POST['paper_type_linear'];
    $paper_type_medium = $_POST['paper_type_medium'];
    $paper_type_medium_1 = $_POST['paper_type_medium_1'];
    $paper_type_medium_2 = $_POST['paper_type_medium_2'];
    $paper_type_linear_1 = $_POST['paper_type_linear_1'];


    $slotting_size = 0;
    $slotting_size_1 = 0;
    $slotting_size_2 = 0;
    $slotting_size_3 = 0;

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
    $board_quantity= $_POST['board_quantity'];
    $roll_size= $_POST['roll_size'];
    $score_or_creez_size = 0;
    $score_or_creez_size_1 = 0;
    $score_or_creez_size_2 = 0;
    $cutting_ratio = $_POST['cutting_ratio'];

  }











mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));

$select_sql_for_duplicacy="SELECT * from `po_details`
                        where `po_number`='$po_number' 
                        and `measurement_of_carton_length`='$measurement_of_carton_length' 
                        and `measurement_of_carton_width`='$measurement_of_carton_width'
                        and `measurement_of_cartoon_height`='$measurement_of_cartoon_height'
                        and `measurement_of_cartoon_ply`='$measurement_of_cartoon_ply'

                        and `paper_type_linear`='$paper_type_linear'
                        and `paper_type_medium`='$paper_type_medium'
                        and `paper_type_medium_1`='$paper_type_medium_1'
                        and `paper_type_medium_2`='$paper_type_medium_2'
                        and `paper_type_linear_1`='$paper_type_linear_1'
                        and `score_or_creez_size`='$score_or_creez_size'
                        and`score_or_creez_size_1`='$score_or_creez_size_1'
                        and `score_or_creez_size_2`='$score_or_creez_size_2'
                        and `slotting_size`='$slotting_size'
                        and `slotting_size_1`='$slotting_size_1'
                        and `slotting_size_2`='$slotting_size_2'
                        and `slotting_size_3`='$slotting_size_3'

                        and `flute_type`='$flute_type'
                        and `printing_status` = '$printing_status'
                        and `dye_cutting` = '$dye_cutting'
                        and `carton_quantity` = '$carton_quantity'
                        and `ratio` = '$ratio'
                        and `cutting_ratio` = '$cutting_ratio'
                        and `board_quantity` = '$board_quantity'
                        and `cutter_size` = '$cutter_size'
                        and `roll_size` = '$roll_size'
                        ";

$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));

if(mysqli_num_rows($result)>0)
{

	$data_previously_saved="Yes";

}
else if( mysqli_num_rows($result) < 1)
{


	$update_sql_statement="UPDATE `po_details`
                       SET 
                           `po_number`='$po_number',
                           `measurement_of_carton_length`='$measurement_of_carton_length',
                           `measurement_of_carton_width`='$measurement_of_carton_width',
                           `measurement_of_cartoon_height`='$measurement_of_cartoon_height',
                           `measurement_of_cartoon_ply`='$measurement_of_cartoon_ply',

                           `paper_type_linear`='$paper_type_linear',
                            `paper_type_medium`='$paper_type_medium',
                            `paper_type_medium_1`='$paper_type_medium_1',
                            `paper_type_medium_2`='$paper_type_medium_2',
                            `paper_type_linear_1`='$paper_type_linear_1',
                            `score_or_creez_size`='$score_or_creez_size',
                            `score_or_creez_size_1`='$score_or_creez_size_1',
                            `score_or_creez_size_2`='$score_or_creez_size_2',
                            `slotting_size`='$slotting_size',
                            `slotting_size_1`='$slotting_size_1',
                            `slotting_size_2`='$slotting_size_2',
                            `slotting_size_3`='$slotting_size_3',

                           `flute_type`='$flute_type',
                           `printing_status` = '$printing_status',
                           `dye_cutting` = '$dye_cutting',
                           `carton_quantity` = '$carton_quantity',
                           `ratio` = '$ratio',
                           `board_quantity` = '$board_quantity',
                           `cutter_size` = '$cutter_size',
                           `roll_size` = '$roll_size',
                          
                        
                          
                           `recording_person_id`='$user_id',
                           `recording_person_name`='$user_name',
                           `recording_time`= NOW() 
                       WHERE 
                           `po_details_id`='$po_details_id'";

	mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));

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
	echo "Data is successfully Updated.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is not successfully updated.";

}

$obj->disconnection();

?>