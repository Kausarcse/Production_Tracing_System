
<?php
//error_reporting(0);
// ob_start();
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

include '../fpdf/code128.php';

$travel_card_id=$_GET['travel_card_id'];


$select_sql_for_travel_card="select pc.po_number
                            ,pc.customer_name
                            ,pc.po_order_received_date
                            ,pc.product_delivery_date
                            ,pc.responsible_person
                            ,pc.buyer_name
                            ,pc.po_quantity
                            ,pc.product_category
                            ,pc.order_type
                            ,pd.measurement_of_carton_length
                            ,pd.measurement_of_carton_width
                            ,pd.measurement_of_cartoon_height
                            ,pd.measurement_of_cartoon_ply
                            ,pd.paper_type_linear
                            ,pd.paper_type_medium
                            ,pd.paper_type_linear_1
                            ,pd.flute_type
                            ,pd.printing_status
                            ,pd.dye_cutting
                            ,pd.carton_quantity
                            ,pd.ratio
                            ,pd.board_quantity
                            ,pd.cutter_size
                            ,pd.roll_size
                            ,pd.score_or_creez_size
                            ,pd.slotting_size
                            ,pd.layout
                            ,pn.process_name
                            ,tcdft.before_process_quantity
                            ,tcdft.process_quantity from `travel_card_details`  tcdft 
                            Inner join process_name pn on tcdft.process_id=pn.process_id
                            Inner join po_creation pc on tcdft.po_id=pc.po_id 
                            Inner join po_details pd on tcdft.po_details_id=pd.po_details_id 
                            where `travel_card_id`='$travel_card_id' ";

$result_for_travel_card = mysqli_query($con,$select_sql_for_travel_card) or die(mysqli_error($con));

$row_for_travel_card=mysqli_num_rows($result_for_travel_card);


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
    $this->Cell(190,6,'Process Travel Card (Carton)',"0","0",'C');  

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
$pdf->SetFont('Arial','B',10);
$pdf->setLeftMargin(8);

 $pdf->Cell(195,0,"","1","1",'C'); 

$pdf->Cell(30,9,"Prepared Date".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9," ","1","0",'C'); 

$pdf->Cell(30,9,"BAR Code".$pdf->Code128(120,30,$travel_card_id,50,8),"LTR","0",'C',true);  
$pdf->Cell(100,9," ","LTR","1",'C');  //barcode


$pdf->Cell(30,9," Time".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9," ","1","0",'C');  
$pdf->Cell(30,9," ".$pdf->SetFillColor(255,204,204),"LBR","0",'C',true);  
$pdf->Cell(100,9," ","LBR","1",'C');  
$pdf->Cell(195,0,"","1","1",'C'); 


$pdf->Ln(5);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Order Description".$pdf->SetFillColor(224,224,224),"1","1",'C',true); 
$pdf->SetFont('Arial','B',9);
$pdf->Cell(30,9,"PO. No/WO. No".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,$row_for_travel_card['po_number'],"1","0",'C');  
$pdf->Cell(30,9,"Byer Name".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"Customer Name".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","1",'C');

$pdf->Cell(30,9,"Order Receiver Date".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');  
$pdf->Cell(30,9,"Delivery Date".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"Responsible Person".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","1",'C');

$pdf->Cell(30,9,"Quantity".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');  
$pdf->Cell(30,9,"Product Category".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"Order Type".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","1",'C');


$pdf->Ln(5);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Product Description".$pdf->SetFillColor(224,224,224),"1","1",'C',true);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->SetFont('Arial','B',10);
$pdf->Cell(30,6,"Measurement".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Length".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Width".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"Height".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(30,6,"Ply".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');  
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","1",'C');

$pdf->Cell(30,6,"Paper Type".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Media".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(65,6,"Flute Type".$pdf->SetFillColor(255,204,204),"1","1",'C',true);  
// $pdf->Cell(35,5,"","1","1",'C');

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');  
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","1",'C');


$pdf->Cell(30,9,"Printing Status".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,9,"Printed".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,9,"Yes/No","1","0",'C');  
$pdf->Cell(35,9,"Die Cutting".$pdf->SetFillColor(255,204,204).$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);
$pdf->Cell(30,9,"Die Cutting".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9,"Yes/No","1","1",'C');

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,"Non-Printed".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,9,"Yes/No","1","0",'C');  
$pdf->Cell(35,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);
$pdf->Cell(30,9,"Non-Die Cutting".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9,"Yes/No","1","1",'C');



$pdf->Ln(5);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Process Description".$pdf->SetFillColor(224,224,224),"1","1",'C',true);
$pdf->Cell(195,0," ","1","1",'C'); 
$pdf->SetFont('Arial','B',10);
$pdf->Cell(30,9,"Carton Qty (Pcs)".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9," ","1","0",'C');  
$pdf->Cell(30,9,"Ratio".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9," ","1","0",'C');
$pdf->Cell(30,9,"Board Qty (Pcs)".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","1",'C');

$pdf->Cell(30,9,"Cutter Size".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","LBT","0",'C');  
$pdf->Cell(30,9,"","BT","0",'C');  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"Roll Size".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"Required time (hr.)".$pdf->SetFillColor(255,255,0),"1","1",'C',true);

$pdf->Cell(30,9,"Score/Crease Size".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');  
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"","LTR","0",'C');  
$pdf->Cell(35,9,"","LTR","1",'C');

$pdf->Cell(30,9,"Slotting Size".$pdf->SetFillColor(204,255,153),"1","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');  
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"","LBR","0",'C');  
$pdf->Cell(35,9,"","LBR","1",'C');

$pdf->Ln(5);

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,9,"Die Cutting".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,9,"Flexo Printing".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9,"Cutting Creasing".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(30,9,"Screen Printing".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,9,"Sloting".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

$pdf->Cell(30,9,"Layout".$pdf->SetFillColor(204,255,153),"LR","0",'C',true);  
$pdf->Cell(35,9,"checkbox","1","0",'C');  
$pdf->Cell(30,9,"checkbox","1","0",'C');  
$pdf->Cell(35,9,"checkbox","1","0",'C');
$pdf->Cell(30,9,"checkbox","1","0",'C');  
$pdf->Cell(35,9,"checkbox","1","1",'C');

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
$pdf->Cell(35,9,"checkbox","1","1",'C');


$pdf->Ln(5);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->Cell(195,9,"Raw Material Description".$pdf->SetFillColor(224,224,224),"1","1",'C',true);
$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->SetFont('Arial','B',10);

$pdf->Cell(30,6,"Consumption".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Media".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"SQM".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(30,6,"Total Consumption".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

$pdf->Cell(30,9,"".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');  
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","1",'C');

$pdf->Cell(30,6,"Raw Material".$pdf->SetFillColor(204,255,153),"LTR","0",'C',true);  
$pdf->Cell(35,6,"Liner".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(30,6,"Media".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"Min roll size in stock".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(30,6,"Chemical-1".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(35,6,"chemical-2".$pdf->SetFillColor(255,204,204),"1","1",'C',true);

$pdf->Cell(30,9,"Availability".$pdf->SetFillColor(204,255,153),"LBR","0",'C',true);  
$pdf->Cell(35,9,"","1","0",'C');  
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","0",'C');
$pdf->Cell(30,9,"","1","0",'C');  
$pdf->Cell(35,9,"","1","1",'C');

ob_end_clean();

$pdf->Output();
// ob_end_flush();
?>
