
<?php
//error_reporting(0);
// ob_start();
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

include '../fpdf/code128.php';

date_default_timezone_set('Asia/Dhaka');
$currentdate = date("d-m-Y");
$current_time=date('H:i:s');

$travel_card_id=$_GET['travel_card_id'];



$select_sql_for_travel_card="select pc.po_number
                           , pc.po_id
                           ,pc.po_order_received_date
                            ,pc.product_delivery_date

                            ,pc.responsible_person
                            ,pc.customer_name
                            ,pc.po_creation_date
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
                             ,tcdft.recording_person_id 
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

    $this->SetFont('Arial','B',12);
   

    $this->setLeftMargin(10);
    $this->Cell(190,6,'Zaber & Zubair Accessories LTD',"0","1",'C');  
    //$this->Ln(2);
    $this->SetFont('Arial','B',10);
    $this->Cell(190,6,'Travel Card ',"0","0",'C');

       

   

    // $this->Image('../img/zz_logo.png',5,16,20);
    $this->setLeftMargin(8);

    $this->Ln(5);


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


$pdf->SetFont('Arial','B',9);
$pdf->Cell(190,6,$travel_card_id."(".$row_for_travel_card['product_category'].")","0","1",'C'); 



 //$pdf->Cell(195,0,"","1","1",'C'); 
$pdf->SetFont('Arial','i',8); 

$pdf->Cell(45,9,"Work Order Date".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(5,9," : ","1","0","C");  
$pdf->Cell(50,9,$row_for_travel_card['po_creation_date'],"1","0",'C'); 

$pdf->Cell(35,9,"Delivery Date".$pdf->SetFillColor(255,204,204),"LTR","0",'C',true);
$pdf->Cell(5,9," : ","1","0","C");   
$pdf->SetFillColor(0,0,0);  
$pdf->Cell(55,9,$row_for_travel_card['product_delivery_date'],"1","1",'C');  //barcode

$pdf->Cell(45,9," ERP NO".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(5,9," : ","1","0","C");  
$pdf->Cell(50,9,"","1","0",'L');

$pdf->Cell(35,9,"Barcode".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9,":","1","0","C");
$pdf->Cell(55,9," ","1","1","C");  
// $pdf->Cell(20,9,$pdf->Code128(120,30,$travel_card_id,60,9),"LTR","0","C");
$pdf->SetFillColor(0,0,0);  
$pdf->Cell(20,9,$pdf->Code128(150,38,$travel_card_id,40,6),"1","0","C");



$pdf->Ln(0);



$pdf->SetFont('Arial','i',8);
$pdf->Cell(45,9,"Buyer& Customer Name".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(5,9," : ","1","0","C"); 
$pdf->Cell(145,9,$row_for_travel_card['buyer_name']."/".$row_for_travel_card['customer_name'],"1","1","C");

$pdf->Ln(0);

$pdf->Cell(45,9,"PO /WO no".$pdf->SetFillColor(255,204,204),"1","0",'C',true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(145,9,$row_for_travel_card['po_number'],"1","1","C");

 $pdf->Ln(0);


$pdf->SetFont('Arial','B',8);
$pdf->Cell(45,10,"Measurement".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,10," : ","1","0","C");
$pdf->Cell(30,5,"L","1","0","C");
$pdf->Cell(30,5,"W","1","0","C");
$pdf->Cell(30,5,"H","1","0","C");
$pdf->Cell(25,5,"","LR","0","C");
$pdf->Cell(30,5,"Roll Size","1","1","C");
$pdf->setLeftMargin(58);

$pdf->Cell(30,5,$row_for_travel_card['measurement_of_carton_length'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,5,$row_for_travel_card['measurement_of_carton_width'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,5,$row_for_travel_card['measurement_of_cartoon_height'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(25,5,"CM ","0","0","C");
$pdf->Cell(30,5,$row_for_travel_card['roll_size'].$pdf->SetFillColor(255,204,204),"1","1","C",true);

$pdf->setLeftMargin(8);
$pdf->Ln(0);




$pdf->SetFont('Arial','B',8);
$pdf->Cell(45,9,"Carton Qty (Pcs)".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(115,9,$row_for_travel_card['carton_quantity'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');
// $pdf->Ln(9);

$pdf->SetFont('Arial','B',8);
$pdf->Cell(45,9,"Ratio".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(115,9,$row_for_travel_card['ratio'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');


$pdf->SetFont('Arial','i',8);
$pdf->Cell(45,9,"Board Qty (Pcs)".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(115,9,$row_for_travel_card['board_quantity'],"1","0","C");
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');


$pdf->Ln(0);

$pdf->SetFont('Arial','B',8);
$pdf->Cell(45,9,"Cutter Size".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['cutter_size'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,9,"mm","1","0","C");
$pdf->Cell(30,9,"","1","0","C");
$pdf->Cell(25,9,"","1","0","C");
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');


$pdf->SetFont('Arial','i',8);
$pdf->Cell(45,9,"Score/Creez Size".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['score_or_creez_size'],"1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['score_or_creez_size_1'],"1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['score_or_creez_size_2'],"1","0","C");
$pdf->Cell(25,9,"mm","1","0","C");
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');

$pdf->Ln(0);


$pdf->SetFont('Arial','i',8);
$pdf->Cell(45,9,"Slotting Size".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['slotting_size'],"1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['slotting_size_1'],"1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['slotting_size_2'],"1","0","C");
$pdf->Cell(25,9,$row_for_travel_card['slotting_size_3'],"1","0","C");
$pdf->Cell(30,9,"mm","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');

$pdf->Ln(0);

$pdf->SetFont('Arial','B',8);
$pdf->Cell(45,10,"Paper Combination".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,10," : ","1","0","C");
$pdf->Cell(30,5,"L","1","0","C");
$pdf->Cell(30,5,"MC","1","0","C");
$pdf->Cell(30,5,"MP","1","0","C");
$pdf->Cell(25,5,"MB","LR","0","C");
$pdf->Cell(30,5,"L","1","1","C");
$pdf->setLeftMargin(58);

$pdf->Cell(30,5,$row_for_travel_card['paper_type_linear'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,5,$row_for_travel_card['paper_type_medium'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,5,$row_for_travel_card['paper_type_medium_1'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(25,5,$row_for_travel_card['paper_type_medium_2'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,5,$row_for_travel_card['paper_type_linear_1'].$pdf->SetFillColor(255,204,204),"1","1","C",true);

$pdf->setLeftMargin(8);
$pdf->Ln(0);

$pdf->SetFont('Arial','B',8);
$pdf->Cell(45,9,"Ply".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['measurement_of_cartoon_ply'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(55,9,"Flute Type".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(25,9,$row_for_travel_card['flute_type'],"1","0","C");
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');

$pdf->SetFont('Arial','B',8);
$pdf->Cell(45,9,"Print Ins.".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(115,9,$row_for_travel_card['printing_status'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');

$pdf->SetFont('Arial','i',8);
$pdf->Cell(45,9,"Other Ins.".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(115,9,$row_for_travel_card['dye_cutting'].$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');

$pdf->SetFont('Arial','i',8);
$pdf->Cell(45,10,"Paper Cost (kg)".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,10," : ","1","0","C");
$pdf->Cell(30,5,"Liner","1","0","C");
$pdf->Cell(30,5,"Media","1","0","C");
$pdf->Cell(30,5,"SQM","1","0","C");
$pdf->Cell(25,5,"","LR","0","C");
$pdf->Cell(30,5,"","1","1","C");
$pdf->setLeftMargin(58);

$pdf->Cell(30,5,$row_for_travel_card['liner_consumption_calc'],"1","0","C");
$pdf->Cell(30,5,$row_for_travel_card['media_consumption_calc'],"1","0","C");
$pdf->Cell(30,5,$row_for_travel_card['sqm_consumption_calc'],"1","0","C");
$pdf->Cell(25,5,"","1","0","C");
$pdf->Cell(30,5,"","1","1","C");

$pdf->setLeftMargin(8);
$pdf->Ln(0);

$pdf->SetFont('Arial','i',8);
$pdf->Cell(45,9,"Total Paper cost (kg)".$pdf->SetFillColor(255,204,204),"1","0","C",true);
$pdf->Cell(5,9," : ","1","0","C");
$pdf->Cell(30,9,$row_for_travel_card['total_consumption'],"1","0","C");
$pdf->Cell(30,9,"kg","1","0","C");
$pdf->Cell(30,9,"","1","0","C");
$pdf->Cell(25,9,"","1","0","C");
$pdf->Cell(30,9,"","1","1","C");
$pdf->Cell(195,0,"","1","1",'C');

$pdf->setLeftMargin(8);

$pdf->Ln(14);
$pdf->Cell(120,5,"Reported By:__________________________________","0","0",'l'); 
$pdf->Cell(90,5,"Checked By:____________________________________","0","1",'l');
$pdf->SetFont('Arial','B',6);


$pdf->Ln(2);

$pdf->Cell(40,9,"Section Name".$pdf->SetFillColor(255,204,204),"1","0",'C',true);  
$pdf->Cell(40,9,"CTN Quantity","1","0",'C'); 
$pdf->Cell(20,9,"Balance","1","0",'C'); 
$pdf->Cell(50,9,"Signature".$pdf->SetFillColor(255,204,204),"1","0",'C');  
$pdf->SetFillColor(0,0,0);  
$pdf->Cell(45,9,"Date","1","1",'C');
$po_id=$row_for_travel_card['po_id'];


$po_details_id=$row_for_travel_card['po_details_id'];
            

                            
    $select_sql_for_process="select tcdft.process_name
                            ,tcdft.process_quantity 
                            ,(pd.carton_quantity-tcdft.process_quantity ) balance
                            from `travel_card_details_for_transactions`  tcdft 
                            inner join `po_details` pd on tcdft.po_id=pd.po_id and tcdft.po_details_id=pd.po_details_id
                            where tcdft.`travel_card_id`='$travel_card_id' ";

   
   
    $result_for_process = mysqli_query($con,$select_sql_for_process) or die(mysqli_error($con));

    while($row_for_for_process=mysqli_fetch_assoc($result_for_process))
    {
       

        $pdf->Cell(35,9,$row_for_for_process['process_name'].$pdf->SetFillColor(255,204,204),"1","0",'C',true);
        $pdf->Cell(5,9," : ","1","0","C");  
        $pdf->Cell(40,9,$row_for_for_process['process_quantity'],"1","0",'C'); 
        $pdf->Cell(20,9,$row_for_for_process['balance'],"1","0",'C'); 
        $pdf->Cell(50,9,"","1","0",'C');  
        $pdf->SetFillColor(0,0,0);  
        $pdf->Cell(45,9,"","1","1",'C');
    }



ob_end_clean();

$pdf->Output();
// ob_end_flush();
?>
