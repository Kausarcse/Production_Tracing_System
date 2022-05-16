<?php 
  	include('../db_znzqc_connection_class.php');
  	$obj2 = new DB_Connection_Class();
  	$obj2->connection();

  	include('../db_connection_class.php');
  	$obj = new DB_Connection_Class_Main();
  	$obj->connection();

  	$recording_person_id = 'hriday';
  	$recording_person_name = 'Hriday';
?>



<?php
// ob_start();
/*require("../fpdf/fpdf.php");*/
include '../fpdf/code128.php';
session_start();

//include('../barcode/barcode.php');

// include('../db_znzqc_connection_class.php');
// $obj2 = new DB_Connection_Class();
// $obj2->connection();


$pp_id=$_GET['pp_id'];

$splitted_data=explode('?fs?', $pp_id);


$pp_number=$splitted_data[0];
$customer_id=$splitted_data[1];
$construction=$splitted_data[2];
$finish_width_in_inch=$splitted_data[3];
$roll_no=$splitted_data[4];
$kgs=$splitted_data[5];
$composition=$splitted_data[6];
$shade=$splitted_data[7];
$weave=$splitted_data[8];
$length=$splitted_data[9];
$finished_type=$splitted_data[10];
$customer_name=$splitted_data[11];
$work_order_number=$splitted_data[12];
$id=$splitted_data[13];
$date = date("Y-m-d");
//echo "/// ".$pp_number;
//echo "/// ".$customer_name;

$sql = "SELECT MAX(id) as max_id FROM roll_information_barcode";
$result = mysqli_query($con, $sql) or die(mysqli_error($con));
$row = mysqli_fetch_array($result);
$max_id = $row['max_id'] + 1;
// if ($max_id == '') 
// {
//    $max_id = 1;
// }
// else
// {
//     $row = mysqli_fetch_array($result);
//     $max_id = $row['max_id'] + 1;
// }

$barcode_code = $pp_number.'_'.$max_id;


//check barcode is available or not
  $sql = "SELECT *
    FROM   roll_information_barcode
    WHERE  pp_number = '$pp_number'
      AND  customer_name = '$customer_name'
      AND  customer_id = '$customer_id'
      AND  barcode_code = '$barcode_code'
      AND  work_order_number = '$work_order_number'
      AND  roll_no = '$roll_no'
      AND  kgs = '$kgs'
      AND  composition = '$composition'
      AND  shade = '$shade'
      AND  weave = '$weave'
      AND  finished_type = '$finished_type'
    ";
  $result = mysqli_query($con, $sql) or die(mysqli_error($con));
  $row = mysqli_num_rows($result);

  if ($row > 0) 
  {
      
  }
  else
  {
      $sql = "INSERT INTO roll_information_barcode (barcode_code, pp_number, customer_name, customer_id, work_order_number, finish_width_in_inch, construction,  roll_no, kgs, composition, shade, weave, length, finished_type, recording_person_id, recording_person_name, recording_time)
      VALUES ('$barcode_code', '$pp_number', '$customer_name', '$customer_id', '$work_order_number', '$finish_width_in_inch', '$construction', '$roll_no', '$kgs', '$composition', '$shade', '$weave', '$length', '$finished_type', '$recording_person_id', '$recording_person_name', NOW())";

      mysqli_query($con, $sql);
  }


// Instanciation of inherited class
/*$pdf = new PDF('P','mm','A4');*/
// $pdf=new PDF_Code128('P','mm','A4');
$pdf=new PDF_Code128('P','mm',array(101.6,101.6));

$pdf->setTopMargin(3);

$pdf->AliasNbPages();
$pdf->AddPage();
// $pdf->SetFont('Arial','B',25);
$pdf->SetAutoPageBreak(false);


$pdf->SetFont('Arial','B',10);
$pdf->Cell(85,5,'ZABER & ZUBAIR FABRICS LTD. (FASHION)',0,0,'C');
$pdf->SetFont('Arial','B',6);
$pdf->Ln();

$pdf->Image('../img/ZnZ.jpg',3,3,10);

$pdf->Ln(0);

$pdf->SetFont('Arial','B',9);
$pdf->Cell(85,4,"Fashion Dyeing (Unit-1)","0","1","C");
$pdf->Ln(0);
$pdf->Cell(85,4,"FINAL INSPECTION","0","1","C");

//  ..................... for barcode ..........................
$pdf->Code128(26,17,$barcode_code,50,5);
$pdf->Ln(0);
$pdf->setLeftMargin(5);
$pdf->Cell(50,16,"".$barcode_code,"0","0","R");
//  .....................end for barcode ..........................

$pdf->setLeftMargin(4);
$pdf->Ln(14);
$pdf->setTextColor(0,0,0);

$pdf->setLeftMargin(13);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"            " .$date ."                                      " .$kgs, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(50,5,"Date : ", "0", "0","L");
$pdf->Cell(45,5,"Kgs : ", "0", "1","L");
$pdf->setLeftMargin(13);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,".............................................           ......................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(18);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"              " .$roll_no, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(95,5,"Roll No : ", "0", "1","L");
$pdf->setLeftMargin(18);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,"........................................................................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(16);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"            " .$pp_number, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(95,5,"PP No : ", "0", "1","L");
$pdf->setLeftMargin(16);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,"..........................................................................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(21);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"          " .$customer_name, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(95,5,"Customer : ", "0", "1","L");
$pdf->setLeftMargin(21);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,".....................................................................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(16);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"                 " .$shade, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(95,5,"Shade : " , "0", "1","L");
$pdf->setLeftMargin(16);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,"..........................................................................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(26);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"      " .$construction, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(95,5,"Construction : ", "0", "1","L");
$pdf->setLeftMargin(26);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,"...............................................................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(21);
$pdf->SetFont('Arial','B',8);
$pdf->Cell(95,-2,"        " .$composition ."                         " .$weave, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(55,5,"Composition : ", "0", "0","L");
$pdf->Cell(40,5,"Weave : ", "0", "1","L");
$pdf->setLeftMargin(25);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,"....................................                ...........................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(17);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"                " .$length, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(95,5,"Length : ", "0", "1","L");
$pdf->setLeftMargin(17);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,".........................................................................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(29);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"   " .$finish_width_in_inch, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(95,5,"Finished Width : ", "0", "1","L");
$pdf->setLeftMargin(29);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,"............................................................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(3);
$pdf->setLeftMargin(28);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(95,-2,"     " .$finished_type, "0", "1","L");
$pdf->setLeftMargin(4);
$pdf->Ln(0);
$pdf->Cell(95,5,"Finished Type : ", "0", "1","L");
$pdf->setLeftMargin(28);
$pdf->SetFont('Arial','',9);
$pdf->Cell(95,-5,".............................................................................", "0", "0","L");
$pdf->setLeftMargin(4);

$pdf->Ln(6);
$pdf->SetFont('Arial','',7);
$pdf->Cell(95,2,"Goods once cut will not be taken back. pls. Cut the Fabrics according to the Batch No.", "0", "0","C");
$pdf->Ln(0);


ob_end_clean();

$pdf->Output();
?>

