
<?php
//error_reporting(0);
// ob_start();
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();
$po_id="";
$po_details_id="";

date_default_timezone_set('Asia/Dhaka');
$currentdate = date("d-m-Y");
$current_time=date('H:i:s');
include '../fpdf/code128.php';

$travel_card_id=$_GET['travel_card_id'];


$select_sql_for_travel_card="select pc.po_number
                           , pc.po_id

                            ,pc.customer_name
                            ,pc.po_order_received_date
                            ,pc.product_delivery_date
                            ,pc.responsible_person
                            ,pc.buyer_name
                            ,pc.po_quantity
                            ,pc.product_category
                            ,pc.order_type
                            ,pd.po_details_id
                            ,pd.measurement_of_carton_length
                            ,pd.measurement_of_carton_width
                            ,pd.measurement_of_cartoon_height
                            ,pd.measurement_of_cartoon_ply
                            ,pd.paper_type_linear
                            ,pd.paper_type_medium
                            ,pd.paper_type_medium_1
                            ,pd.paper_type_medium_2
                            ,pd.paper_type_linear_1
                            ,pd.flute_type
                            ,pd.printing_status
                            ,pd.dye_cutting
                            ,pd.carton_quantity
                            ,pd.ratio
                            ,pd.board_quantity
                            ,pd.cutter_size
                            ,pd.roll_size
                            ,pd.cutting_ratio
                            ,pd.score_or_creez_size
                            ,pd.score_or_creez_size_1
                            ,pd.score_or_creez_size_2
                            ,pd.slotting_size
                            ,pd.slotting_size_1
                            ,pd.slotting_size_2
                            ,pd.slotting_size_3
                            ,pd.layout
                            ,pd.required_time
                            ,tcdft.liner_consumption_calc
                            ,tcdft.media_consumption_calc
                            ,tcdft.sqm_consumption_calc
                            ,tcdft.total_consumption
                            ,tcdft.before_process_quantity
                            ,tcdft.process_quantity 
                            from `travel_card_details`  tcdft 
                            Inner join po_creation pc on tcdft.po_id=pc.po_id 
                            Inner join po_details pd on tcdft.po_details_id=pd.po_details_id 
                            where `travel_card_id`='$travel_card_id' ";

$result_for_travel_card = mysqli_query($con,$select_sql_for_travel_card) or die(mysqli_error($con));

$row_for_travel_card=mysqli_fetch_array($result_for_travel_card);




class PDF extends PDF_Code128
{
   
// Page header
function Header()
{
   
    $this->setTopMargin(10);

    $this->SetFont('Arial','B',16);
   

    $this->setLeftMargin(10);
    $this->Cell(190,6,'Zaber & Zubair Accessories Limited',"0","1",'C');  
    //$this->Ln(2);
    $this->SetFont('Arial','B',12);
    $this->Cell(190,6,"Process Travel Card  ".$row_for_travel_card['product_category'],"0","0",'C');  

    // $this->Image('../img/zz_logo.png',5,16,20);
    $this->setLeftMargin(8);

    $this->Ln(12);


}

// Page footer
function Footer()
{
    // Position at 1.5 cm from bottom
    $this->SetY(-16);
    // Arial italic 8
    $this->Cell(120,5,"Reported By:____________________","0","0",'l'); 
    $this->Cell(90,5,"Checked By:____________________","0","1",'l');
    $this->SetFont('Arial','B',10);
    // Page number
    
    // $this->Cell(0,5,'Page '.$this->PageNo().'/{nb}',0,1,'C');
    $this->setLeftMargin(10);
    $this->SetFont('Arial','',8);
    $this->SetAutoPageBreak(true, 10);
    // $this->Ln(5);
    $this->AcceptPageBreak();
}
}


// Instanciation of inherited class
/*$pdf = new PDF('P','mm','A4');*/

$pdf=new PDF('P','mm','A4');
$pdf->AliasNbPages();
$pdf->AddPage();

$pdf->AcceptPageBreak();
$pdf->SetAutoPageBreak(true, 10);

//$pdf->Code128(136,23,"Barcode",50,8);
$pdf->SetFont('Arial','B',8);
$pdf->setLeftMargin(8);

 $pdf->Cell(195,0,"","1","1",'C'); 

$pdf->Cell(30,9,"Prepared Date".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9,$currentdate,"1","0",'C'); 

$pdf->Cell(30,9,"BAR Code".$pdf->SetFillColor(255,204,204),"LTR","0",'C',true);  
$pdf->SetFillColor(0,0,0);  
$pdf->Cell(100,9,$pdf->Code128(120,30,$travel_card_id,60,9),"LTR","1",'C');  //barcode


$pdf->Cell(30,9," Time".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9,$current_time,"1","0",'C');  
$pdf->Cell(30,9," ".$pdf->SetFillColor(255,204,204),"LBR","0",'C',true);  
$pdf->Cell(100,9,$travel_card_id,"LBR","1",'C');  
$pdf->Cell(195,0,"","1","1",'C'); 


/*$pdf->Ln(5);*/

$pdf->SetFont('Arial','B',6);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Order Description".$pdf->SetFillColor(224,224,224),"1","1",'C',true); 
$pdf->SetFont('Arial','B',6);
$pdf->Cell(30,9,"PO. No/WO. No".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['po_number'],"1","0",'C');  
$pdf->Cell(30,9,"Buyer Name".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['buyer_name'],"1","0",'C');
$pdf->Cell(30,9,"Customer Name".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['customer_name'],"1","1",'C');

$pdf->Cell(30,9,"Order Receive Date".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['po_order_received_date'],"1","0",'C');  
$pdf->Cell(30,9,"Delivery Date".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['product_delivery_date'],"1","0",'C');
$pdf->Cell(30,9,"Responsible Person".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['responsible_person'],"1","1",'C');

$pdf->Cell(30,9,"Quantity".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['po_quantity'],"1","0",'C');  
$pdf->Cell(30,9,"Product Category".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['product_category'],"1","0",'C');
$pdf->Cell(30,9,"Order Type".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['order_type'],"1","1",'C');


/*$pdf->Ln(5);*/

$pdf->SetFont('Arial','B',8);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Product Description".$pdf->SetFillColor(224,224,224),"1","1",'C',true);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->SetFont('Arial','B',8);
$pdf->Cell(30,6,"Measurement(cm)".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Length".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Width".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"Height".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(30,6,"Ply".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['measurement_of_carton_length'],"1","0",'C');  
$pdf->Cell(30,9,$row_for_travel_card['measurement_of_carton_width'],"1","0",'C');  
$pdf->Cell(35,9,$row_for_travel_card['measurement_of_cartoon_height'],"1","0",'C');
$pdf->Cell(30,9,$row_for_travel_card['measurement_of_cartoon_ply'],"1","0",'C');  
$pdf->Cell(35,9,"","1","1",'C');

//paper_type
$pdf->Cell(30,6,"Paper Type".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Medium".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"Medium".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(30,6,"Medium".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['paper_type_linear'],"1","0",'C');  
$pdf->Cell(30,9,$row_for_travel_card['paper_type_medium'],"1","0",'C');  
$pdf->Cell(35,9,$row_for_travel_card['paper_type_medium_1'],"1","0",'C');
$pdf->Cell(30,9,$row_for_travel_card['paper_type_medium_2'],"1","0",'C');  
$pdf->Cell(35,9,$row_for_travel_card['paper_type_linear_1'],"1","1",'C');

//end of paper type

/*$pdf->Cell(30,6,"Paper Type".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Medium".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(65,6,"Flute Type".$pdf->SetFillColor(255,204,204),"1","1",'C',true);  


$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['paper_type_linear'],"1","0",'C');  
$pdf->Cell(30,9,$row_for_travel_card['paper_type_medium'],"1","0",'C');  
$pdf->Cell(35,9,$row_for_travel_card['paper_type_linear_1'],"1","0",'C');
$pdf->Cell(65,9,$row_for_travel_card['flute_type'],"1","1",'C');  */
// $pdf->Cell(35,9,"","1","1",'C');

//Flute Type
$pdf->Cell(30,9,"Flute Type".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
// $pdf->Cell(35,9,"Printed".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(165,9,$row_for_travel_card['flute_type'],"1","0",'C'); 

$pdf->Ln();



$pdf->Cell(30,9,"Printing Status".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
// $pdf->Cell(35,9,"Printed".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(65,9,$row_for_travel_card['printing_status'],"1","0",'C');  
// $pdf->Cell(35,9,"Die Cutting".$pdf->SetFillColor(255,204,204).$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);
$pdf->Cell(35,9,"Die Cutting".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(65,9,$row_for_travel_card['dye_cutting'],"1","1",'C');

// $pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
// $pdf->Cell(35,9,"Non-Printed".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
// $pdf->Cell(30,9,"Yes/No","1","0",'C');  
// $pdf->Cell(35,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);
// $pdf->Cell(30,9,"Non-Die Cutting".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
// $pdf->Cell(35,9,"Yes/No","1","1",'C');



/*$pdf->Ln(5);*/

$pdf->SetFont('Arial','B',8);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Process Description".$pdf->SetFillColor(224,224,224),"1","1",'C',true);
$pdf->Cell(195,0," ","1","1",'C'); 
$pdf->SetFont('Arial','B',8);
$pdf->Cell(30,9,"Carton Qty (Pcs)".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['carton_quantity'],"1","0",'C');  
$pdf->Cell(30,9,"Ratio".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['ratio'],"1","0",'C');
$pdf->Cell(30,9,"Board Qty (Pcs)".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['board_quantity'],"1","1",'C');

//cutter size
$pdf->Cell(30,9,"Roll Size(mm)".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
// $pdf->Cell(35,9,"Printed".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(165,9,$row_for_travel_card['roll_size'],"1","0",'C'); 

$pdf->Ln();


//cutting Ratio
$pdf->Cell(30,9,"Cutting Ratio".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
// $pdf->Cell(35,9,"Printed".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(165,9,$row_for_travel_card['cutting_ratio'],"1","0",'C'); 

$pdf->Ln();

//cutter size
$pdf->Cell(30,9,"Cutter Size(mm)".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
// $pdf->Cell(35,9,"Printed".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(165,9,$row_for_travel_card['cutter_size'],"1","0",'C'); 

$pdf->Ln();


$pdf->Cell(30,9,"Score/Crease Size".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['score_or_creez_size'],"1","0",'C'); 
$pdf->Cell(30,9,"Score/Crease Size 1".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
// $pdf->Cell(35,9,"","LBT","0",'C');  
// $pdf->Cell(30,9,"","BT","0",'C');  
$pdf->Cell(35,9,$row_for_travel_card['score_or_creez_size_1'],"1","0",'C');
$pdf->Cell(30,9,"Score/Crease Size 2".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['score_or_creez_size_2'],"1","0",'C');

$pdf->Ln();

$pdf->Cell(30,6,"Slotting Size(mm)".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Slotting Size".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Slotting Size 1".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"Slotting Size 2".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(30,6,"Slotting Size 3".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['slotting_size'],"1","0",'C');  
$pdf->Cell(30,9,$row_for_travel_card['slotting_size_1'],"1","0",'C');  
$pdf->Cell(35,9,$row_for_travel_card['slotting_size_2'],"1","0",'C');
$pdf->Cell(30,9,$row_for_travel_card['slotting_size_3'],"1","0",'C');  
$pdf->Cell(35,9,"","1","1",'C');


// $pdf->Cell(30,9,"Slotting Size(mm)".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
// $pdf->Cell(35,9,$row_for_travel_card['slotting_size'],"1","1",'C');   
// $pdf->Cell(30,9,"Roll Size".$pdf->SetFillColor(204,255,153),"1","0",'C',true); 
// $pdf->Cell(65,9,$row_for_travel_card['roll_size'],"1","0",'C');  
// $pdf->Cell(35,9,"Required time (hr.)".$pdf->SetFillColor(255,255,0),"1","0",'C',true);
// $pdf->Cell(65,9,$row_for_travel_card['required_time'],"1","1",'C');


// $pdf->Cell(30,9,"","1","0",'C');  
// $pdf->Cell(35,9,"","1","0",'C');


// $pdf->Cell(30,9,"","1","0",'C');  
// $pdf->Cell(35,9,"","1","0",'C');
// $pdf->Cell(30,9,"","LBR","0",'C');  
// $pdf->Cell(35,9,"","LBR","1",'C');

/*$pdf->Ln(5);*/

// $pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
// $pdf->Cell(35,9,"Die Cutting".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
// $pdf->Cell(30,9,"Flexo Printing".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
// $pdf->Cell(35,9,"Cutting Creasing".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
// $pdf->Cell(30,9,"Screen Printing".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
// $pdf->Cell(35,9,"Sloting".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

/*$layout=$row_for_travel_card['layout'];

$splitted_value=explode(",", $layout);
 $flexo_printing=$splitted_value[0];
$cutting_creasing=$splitted_value[1];

if($row_for_travel_card['layout']=="Die Cutting")
{
    $dye_cutting = "YES";
}
else
{
    $dye_cutting = "NO";
}

if($flexo_printing=="Flexo Printing")
{
    $flexo_printing = "YES";
}
else
{
    $flexo_printing = "NO";
}
if($cutting_creasing=="Cutting Creasing")
{
    $cutting_creasing = "YES";
}
else
{
    $cutting_creasing = "NO";
}

if($row_for_travel_card['layout']=="Screen Printing")
{
    $screen_printing = "YES";
}
else
{
    $screen_printing = "NO";
}

if($row_for_travel_card['layout']=="Sloting")
{
    $sloting = "YES";
}
else
{
    $sloting = "NO";
}




$pdf->Cell(30,9,"Layout".$pdf->SetFillColor(204,255,153),"LR","0",'C',true);  
$pdf->Cell(35,9,$dye_cutting,"1","0",'C');  
$pdf->Cell(30,9,$flexo_printing,"1","0",'C');  
$pdf->Cell(35,9, $cutting_creasing,"1","0",'C');
$pdf->Cell(30,9,$screen_printing,"1","0",'C');  
$pdf->Cell(35,9,$sloting,"1","1",'C');

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LR","0",'C',true);  
$pdf->Cell(35,9,"Glu-Folding (Auto)".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,9,"Gum Pasting".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9,"Other Instruction-1".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(30,9,"Other Instruction-2".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9,"Other Instruction-3".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,"checkbox","1","0",'C');  
$pdf->Cell(30,9,"checkbox","1","0",'C');  
$pdf->Cell(35,9,"checkbox","1","0",'C');
$pdf->Cell(30,9,"checkbox","1","0",'C');  
$pdf->Cell(35,9,"checkbox","1","1",'C');*/


/*$pdf->Ln(5);*/

$pdf->SetFont('Arial','B',8);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Raw Material Description".$pdf->SetFillColor(224,224,224),"1","1",'C',true);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->SetFont('Arial','B',8);


$pdf->Cell(30,6,"Consumption (kg)".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Media".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"SQM".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(65,6,"Total Consumption".$pdf->SetFillColor(255,204,204),"1","1",'C',true);  
// $pdf->Cell(35,6,"".$pdf->SetFillColor(255,204,204),"1","1",'C',true);



$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['liner_consumption_calc'],"1","0",'C');  
$pdf->Cell(30,9,$row_for_travel_card['media_consumption_calc'],"1","0",'C');  
$pdf->Cell(35,9,$row_for_travel_card['sqm_consumption_calc'],"1","0",'C');
$pdf->Cell(65,9,$row_for_travel_card['total_consumption'],"1","1",'C');  

$pdf->Ln(5);
// $pdf->Cell(35,9,"","1","1",'C');

// $pdf->Cell(30,6,"Raw Material".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
// $pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
// $pdf->Cell(30,6,"Media".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
// $pdf->Cell(35,6,"Min roll size in stock".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
// $pdf->Cell(30,6,"Chemical-1".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
// $pdf->Cell(35,6,"chemical-2".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

// $pdf->Cell(30,9,"Availability".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
// $pdf->Cell(35,9,"","1","0",'C');  
// $pdf->Cell(30,9,"","1","0",'C');  
// $pdf->Cell(35,9,"","1","0",'C');
// $pdf->Cell(30,9,"","1","0",'C');  
// $pdf->Cell(35,9,"","1","1",'C');



/*$pdf->SetFont('Arial','B',12);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Process Information".$pdf->SetFillColor(224,224,224),"1","1",'C',true);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->SetFont('Arial','B',10);

$pdf->Cell(50,8,"Current State".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(55,8,$row_for_travel_card['process_name'],"1","0",'C');  
$pdf->Cell(50,8,"Process Quantity".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(40,8,$row_for_travel_card['process_quantity'],"1","0",'C');*/

/*for footer Section*/



   
   

    // $pdf->Ln(5);


    // $pdf->Cell(50,8,"Section Name".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
    // $pdf->Cell(55,8,"CTN Quantity".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
    // $pdf->Cell(50,8,"Signature".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
    // $pdf->Cell(40,8,"Date".$pdf->SetFillColor(204,255,153),"1","1",'C',true);
     

    //  $po_id=$row_for_travel_card['po_id'];
    //  $po_details_id=$row_for_travel_card['po_details_id'];

    //  $select_sql_for_process="select * from adding_process_route_for_po
    //                         where `po_id`='$po_id' and po_details_id='$po_details_id'";

    // $result_for_process = mysqli_query($con,$select_sql_for_process) or die(mysqli_error($con));

    // while($row_for_for_process=mysqli_fetch_assoc($result_for_process))
    // {
       
    //     $pdf->Cell(50,8,$row_for_for_process['process_name'],"1","0",'C');  
    //     $pdf->Cell(55,8,"","1","0",'C');  
    //     $pdf->Cell(50,8,"","1","0",'C');  
    //     $pdf->Cell(40,8,"","1","1",'C');
    // }

    $pdf->Cell(40,4,"Section Name".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
    $pdf->Cell(40,4,"CTN Quantity".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
    $pdf->Cell(40,4,"Balance".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
    $pdf->Cell(40,4,"Signature".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
    $pdf->Cell(35,4,"Date".$pdf->SetFillColor(204,255,153),"1","1",'C',true);

    

   
   $po_id=$row_for_travel_card['po_id'];
   $po_details_id=$row_for_travel_card['po_details_id'];
                            
    $select_sql_for_process="select distinct acprfp.process_name
                            from `adding_process_route_for_po` acprfp
                            inner join `po_details` pd  on pd.po_id=acprfp.po_id and pd.po_details_id=acprfp.po_details_id where acprfp.po_id='$po_id' and acprfp.po_details_id='$po_details_id'";

   
    echo $select_sql_for_process;
    $result_for_process = mysqli_query($con,$select_sql_for_process) or die(mysqli_error($con));

    while($row_for_for_process=mysqli_fetch_assoc($result_for_process))
    {
       
        $pdf->Cell(40,4,$row_for_for_process['process_name'],"1","0",'C');  
        $pdf->Cell(40,4,"","1","0",'C');  
        $pdf->Cell(40,4,"","1","0",'C');  
        $pdf->Cell(40,4,"","1","0",'C'); 
        $pdf->Cell(35,4,"","1","1",'C');
    }


ob_end_clean();

$pdf->Output();
// ob_end_flush();
?>
