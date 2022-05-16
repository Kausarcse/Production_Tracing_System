
<?php
error_reporting(0);
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

$date = date("Y-m-d");



$sub_query="";


if(isset($_POST['from_date']) && $_POST['from_date']!='' && $_POST['to_date']=='')
{   
    $from_date=$_POST['from_date'];
    $from_date=date_create($from_date);
    $from_date = date_format($from_date,"Y-m-d");
    

//AND ((date_format(str_to_date(tcdft.travel_card_creation_date, '%d-%m-%Y'), '%Y-%m-%d'))
    //$sub_query.=" and  tcd.travel_card_creation_date = '".$from_date."'";
    $sub_query.=" AND ((date_format(str_to_date(tcd.travel_card_creation_date, '%d-%m-%Y'), '%Y-%m-%d')) = '".$from_date."'";

}
 if(isset($_POST['to_date']) && isset($_POST['from_date']) && $_POST['to_date']!='')
{   
    
  $from_date=$_POST['from_date'];
  $from_date=date_create($from_date);
  $from_date = date_format($from_date,"Y-m-d");

  $to_date=$_POST['to_date'];

  $to_date=date_create($to_date);
  $to_date = date_format($to_date,"Y-m-d");

 $sub_query.=" AND (date_format(str_to_date(tcd.travel_card_creation_date, '%d-%m-%Y'), '%Y-%m-%d')) BETWEEN '".$from_date."' and '".$to_date."'";
}

if(isset($_POST['po_number']) && $_POST['po_number']!='' && $_POST['po_number']!='select')
{   
    $po_number=$_POST['po_number'];

    $split_po=explode("?fs", $po_number);
    $po_id=$split_po[0];

    $sub_query.=" and  tcd.po_id='".$po_id."'";
    //$sub_query.=" and  tcd.po_id='po_103'";


}






$current_process_index=-1;
$previous_process="";
$after_process="";
$sl=1;
$data_for_all_process = array();
// echo $process_name;


$table ='  <table class="table">
                    <thead>
                          <tr>
                            <td style="text-align: center; font-size: 25px; color: black; font-weight: bold; border: 1px solid">
                             PO Wise Production Report
                            </td>
                            
                        </tr>
                    </thead>
                </table>

                
           <table class="table table-bordered" style="border: 2px solid black;" id="table_for_result">
                    <thead>

                     
                            <tr style="background-color: #C0C0C0; border: 2px solid black;">
                                
                                <th rowspan="2" style="border: 1px solid">SL NO</th>
                                <th rowspan="2" style="border: 1px solid">Production Date</th>
                                <th rowspan="2" style="border: 1px solid">Delivery Date</th>
                                <th rowspan="2" style="border: 1px solid">ERP No</th>
                                <th rowspan="2" style="border: 1px solid">Travel Card</th>
                                <th rowspan="2" style="border: 1px solid">Customer Name</th>
                                <th rowspan="2" style="border: 1px solid">Buyer Name</th>
                                <th rowspan="2" style="border: 1px solid">PO No</th>
                                <th rowspan="2" style="border: 1px solid">Item Name</th>
                                <th rowspan="2" style="border: 1px solid">PLY</th>
                                <th rowspan="2" style="border: 1px solid">Linear Paper</th>
                                <th rowspan="2" style="border: 1px solid">Linear Paper 1</th>
                                <th rowspan="2" style="border: 1px solid">Medium Paper </th>
                                <th rowspan="2" style="border: 1px solid">Medium Paper 1</th>
                                <th rowspan="2" style="border: 1px solid">Medium Paper 2</th>
                                <th colspan="4" style="border: 1px solid" >Measurement</th>
                                <th rowspan="2" style="border: 1px solid">Ratio</th>
                                <th rowspan="2" style="border: 1px solid">Roll Size</th>
                                <th rowspan="2" style="border: 1px solid">Actual Ratio</th>
                                <th rowspan="2" style="border: 1px solid">Actual Roll Size</th>
                                <th rowspan="2" style="border: 1px solid">Order Qty</th>


                                <th colspan="5" style="border: 1px solid">Corrugation</th>

                                <th colspan="5" style="border: 1px solid">Printing & Slotting </th>

                                <th colspan="5" style="border: 1px solid">Cutting Creasing</th>

                                <th colspan="5" style="border: 1px solid">Die Cutting </th>

                                <th colspan="5" style="border: 1px solid">Manual Slotting</th>

                                <th colspan="5" style="border: 1px solid">Folding & Gluing</th>

                                <th colspan="5" style="border: 1px solid">Delivery</th>


                                <th colspan="3" style="border: 1px solid">Paper As per travel card</th>

                                <th colspan="2" style="border: 1px solid">Actual Used Paper</th>

                                <th colspan="2" style="border: 1px solid">Extra Paper Used</th>


                                <th colspan="2" style="border: 1px solid">Wastage %</th>

                            </tr>
                            <tr style="background-color: #C0C0C0; border: 2px solid black;">
                                <th style="border: 1px solid">L</th>
                                <th style="border: 1px solid">W</th>
                                <th style="border: 1px solid">H</th>
                                <th style="border: 1px solid">CM</th>

                                <th style="border: 1px solid">Date</th>
                                <th style="border: 1px solid">User Name</th>
                                <th style="border: 1px solid">Board Making Qty</th>
                                <th style="border: 1px solid">Balance Qty</th>
                                <th style="border: 1px solid">Short/Waste Qty</th>

                                <th style="border: 1px solid">Date</th>
                                <th style="border: 1px solid">User Name</th>
                                <th style="border: 1px solid">Production Qty</th>
                                <th style="border: 1px solid">Balance Qty</th>
                                <th style="border: 1px solid">Short/Waste Qty</th>
                                
                                <th style="border: 1px solid">Date</th>
                                <th style="border: 1px solid">User Name</th>
                                <th style="border: 1px solid">Production Qty</th>
                                <th style="border: 1px solid">Balance Qty</th>
                                <th style="border: 1px solid">Short/Waste Qty</th>

                                <th style="border: 1px solid">Date</th>
                                <th style="border: 1px solid">User Name</th>
                                <th style="border: 1px solid">Production Qty</th>
                                <th style="border: 1px solid">Balance Qty</th>
                                <th style="border: 1px solid">Short/Waste Qty</th>

                                <th style="border: 1px solid">Date</th>
                                <th style="border: 1px solid">User Name</th>
                                <th style="border: 1px solid">Production Qty</th>
                                <th style="border: 1px solid">Balance Qty</th>
                                <th style="border: 1px solid">Short/Waste Qty</th>

                                <th style="border: 1px solid">Date</th>
                                <th style="border: 1px solid">User Name</th>
                                <th style="border: 1px solid">Production Qty</th>
                                <th style="border: 1px solid">Balance Qty</th>
                                <th style="border: 1px solid">Short/Waste Qty</th>

                                <th style="border: 1px solid">Date</th>
                                <th style="border: 1px solid">User Name</th>
                                <th style="border: 1px solid">Production Qty</th>
                                <th style="border: 1px solid">Balance Qty</th>
                                <th style="border: 1px solid">Short/Waste Qty</th>


                                <th style="border: 1px solid">User Name</th>
                                <th style="border: 1px solid">Liner (Kg)</th>
                                <th style="border: 1px solid">Medium (Kg)</th>

                                
                                <th style="border: 1px solid">Liner (Kg)</th>
                                <th style="border: 1px solid">Medium (Kg)</th>
                                
                                <th style="border: 1px solid">Liner (Kg)</th>
                                <th style="border: 1px solid">Medium (Kg)</th>

                                 <th style="border: 1px solid">Liner (Kg)</th>
                                <th style="border: 1px solid">Medium (Kg)</th>

                                
                            </tr>
                            </thead>

                            <tbody>';
                            
     // $sql = "SELECT DISTINCT 
     //            tcd.travel_card_creation_date,tcdft.travel_card_id,
     //            pc.product_delivery_date,pc.customer_name,pc.buyer_name,pc.po_number,pc.product_category,pd.measurement_of_cartoon_ply,
     //            pd.paper_type_linear,pd.paper_type_medium,pd.measurement_of_carton_length,pd.measurement_of_carton_width,pd.measurement_of_cartoon_height,pd.ratio,pd.roll_size,pd.carton_quantity,pd.paper_type_linear_1,pd.paper_type_medium_1,pd.paper_type_medium_2,
     //            tcdft.actual_ratio,tcdft.actual_roll_size,pc.po_id,
     //             tcdft.liner_consumption_calc,tcdft.media_consumption_calc, tcdft.actual_used_linear,tcdft.actual_used_medium,tcdft.travel_card_id,(tcdft.actual_used_linear-tcdft.liner_consumption_calc) linear_extra_used,(tcdft.actual_used_medium-tcdft.media_consumption_calc) medium_extra_used,((tcdft.actual_used_linear-tcdft.liner_consumption_calc)/tcdft.liner_consumption_calc) linear_percentage,((tcdft.actual_used_medium-tcdft.media_consumption_calc)/tcdft.media_consumption_calc) medium_percentage


     //            From travel_card_details_for_transactions tcdft
     //            left join travel_card_details  tcd  on tcdft.po_details_id=tcd.po_details_id  
     //            left join po_creation pc on tcdft.po_id = pc.po_id 
     //            left join po_details pd on tcdft.po_details_id = pd.po_details_id and  tcdft.po_id=tcd.po_id  WHERE 1=1 AND tcdft.process_id = 'proc_1' ".$sub_query."";  


    $sql = "SELECT DISTINCT 
                tcd.travel_card_creation_date,tcd.travel_card_id,
                pc.product_delivery_date,pc.customer_name,pc.buyer_name,pc.po_number,pc.product_category,pd.measurement_of_cartoon_ply,
                pd.paper_type_linear,pd.paper_type_medium,pd.measurement_of_carton_length,pd.measurement_of_carton_width,pd.measurement_of_cartoon_height,pd.ratio,pd.roll_size,pd.carton_quantity,pd.paper_type_linear_1,pd.paper_type_medium_1,pd.paper_type_medium_2, tcd.actual_ratio details_actual_ratio, tcd.actual_roll_size details_actual_roll_size, 
                tcdft.actual_ratio, tcdft.actual_roll_size,pc.po_id,
                 tcdft.liner_consumption_calc,tcdft.media_consumption_calc, tcdft.actual_used_linear,tcdft.actual_used_medium,(tcdft.actual_used_linear-tcdft.liner_consumption_calc) linear_extra_used,(tcdft.actual_used_medium-tcdft.media_consumption_calc) medium_extra_used,((tcdft.actual_used_linear-tcdft.liner_consumption_calc)/tcdft.liner_consumption_calc) linear_percentage,((tcdft.actual_used_medium-tcdft.media_consumption_calc)/tcdft.media_consumption_calc) medium_percentage


                From travel_card_details tcd 
                left join travel_card_details_for_transactions tcdft on tcd.po_details_id = tcdft.po_details_id and tcdft.actual_used_linear <> 0 and tcdft.actual_used_medium <> 0 and tcdft.process_id = 'proc_1'
                left join po_creation pc on tcd.po_id = pc.po_id 
                left join po_details pd on tcd.po_details_id = pd.po_details_id WHERE 1=1 ".$sub_query."";


    //last change 
   // $sql = "SELECT DISTINCT 
   //              tcd.travel_card_creation_date,tcd.travel_card_id,
   //              pc.product_delivery_date,pc.customer_name,pc.buyer_name,pc.po_number,pc.product_category,pd.measurement_of_cartoon_ply,
   //              pd.paper_type_linear,pd.paper_type_medium,pd.measurement_of_carton_length,pd.measurement_of_carton_width,pd.measurement_of_cartoon_height,pd.ratio,pd.roll_size,pd.carton_quantity,pd.paper_type_linear_1,pd.paper_type_medium_1,pd.paper_type_medium_2,
   //              tcd.actual_ratio,tcd.actual_roll_size,pc.po_id,
   //               tcdft.liner_consumption_calc,tcdft.media_consumption_calc, tcdft.actual_used_linear,tcdft.actual_used_medium,(tcdft.actual_used_linear-tcdft.liner_consumption_calc) linear_extra_used,(tcdft.actual_used_medium-tcdft.media_consumption_calc) medium_extra_used,((tcdft.actual_used_linear-tcdft.liner_consumption_calc)/tcdft.liner_consumption_calc) linear_percentage,((tcdft.actual_used_medium-tcdft.media_consumption_calc)/tcdft.media_consumption_calc) medium_percentage


   //              From travel_card_details tcd 
   //              left join travel_card_details_for_transactions tcdft on tcd.po_details_id = tcdft.po_details_id 
   //              left join po_creation pc on tcd.po_id = pc.po_id 
   //              left join po_details pd on tcd.po_details_id = pd.po_details_id WHERE 1=1 and tcdft.process_id = 'proc_1' ".$sub_query.""; 

     // echo $sql = "SELECT DISTINCT 
     //            tcd.travel_card_creation_date,tcdft.travel_card_id,
     //            pc.product_delivery_date,pc.customer_name,pc.buyer_name,pc.po_number,pc.product_category,pd.measurement_of_cartoon_ply,
     //            pd.paper_type_linear,pd.paper_type_medium,pd.measurement_of_carton_length,pd.measurement_of_carton_width,pd.measurement_of_cartoon_height,pd.ratio,pd.roll_size,pd.carton_quantity,pd.paper_type_linear_1,pd.paper_type_medium_1,pd.paper_type_medium_2,
     //            tcdft.actual_ratio,tcdft.actual_roll_size,pc.po_id,
     //             tcdft.liner_consumption_calc,tcdft.media_consumption_calc, tcdft.actual_used_linear,tcdft.actual_used_medium,tcdft.travel_card_id,(tcdft.actual_used_linear-tcdft.liner_consumption_calc) linear_extra_used,(tcdft.actual_used_medium-tcdft.media_consumption_calc) medium_extra_used,((tcdft.actual_used_linear-tcdft.liner_consumption_calc)/tcdft.actual_used_linear) linear_percentage,((tcdft.actual_used_medium-tcdft.media_consumption_calc)/tcdft.actual_used_medium) medium_percentage


     //            From travel_card_details_for_transactions tcdft, travel_card_details  tcd, po_creation pc, po_details pd
     //            WHERE 1=1
     //            AND tcdft.po_details_id=tcd.po_details_id  
     //            AND tcdft.po_id = pc.po_id 
     //            AND tcdft.po_details_id = pd.po_details_id 
     //            AND tcdft.po_id = tcd.po_id 
     //            AND tcdft.process_id = 'proc_1'
     //            ".$sub_query."";            
   
        //echo  $sql; 

        // ,tcdft.recording_person_id,tcdft.recording_person_name
       
         $result= mysqli_query($con, $sql) or die(mysqli_error($con));

         while( $row = mysqli_fetch_array( $result))
         {        

            // $split_timme=explode(" ", $row['recording_time']);

            $po_id = $row['po_id'];
            $date=date_create($row['travel_card_creation_date']);
            $travel_card_creation_date = date_format($date,"m/d/Y");
            //$product_delivery_date = $row['product_delivery_date'];
            $date=date_create($row['product_delivery_date']);
            $product_delivery_date = date_format($date,"m/d/Y");

            if ($row['actual_ratio'] == '') 
            {
                $actual_ratio = $row['details_actual_ratio'];
            }
            else
            {
                $actual_ratio = $row['actual_ratio'];
            }

            if ($row['actual_roll_size'] == '') 
            {
                $actual_roll_size = $row['details_actual_roll_size'];
            }
            else
            {
                $actual_roll_size = $row['actual_roll_size'];
            }

                             $table.='
                                    <tr style="border: 1px solid black;">
                                    <td style="border: 1px solid">'.$sl.'</td>
                                    <td style="border: 1px solid">'.$travel_card_creation_date.'</td>
                                    <td style="border: 1px solid">'.$product_delivery_date.'</td>
                                    <td style="border: 1px solid"></td>
                                     <td style="border: 1px solid">'.$row['travel_card_id'].'</td>
                                    <td style="border: 1px solid">'.$row['customer_name'].'</td>
                                    <td style="border: 1px solid">'.$row['buyer_name'].'</td>
                                    <td style="border: 1px solid">'.$row['po_number'].'</td>  
                                    <td style="border: 1px solid">'.$row['product_category'].'</td>
                                    <td style="border: 1px solid">'.$row['measurement_of_cartoon_ply'].'</td>
                                    <td style="border: 1px solid">'.$row['paper_type_linear'].'</td>
                                    <td style="border: 1px solid">'.$row['paper_type_linear_1'].'</td>
                                    <td style="border: 1px solid">'.$row['paper_type_medium'].'</td>
                                    <td style="border: 1px solid">'.$row['paper_type_medium_1'].'</td>
                                    <td style="border: 1px solid">'.$row['paper_type_medium_2'].'</td>
                                    <td style="border: 1px solid">'.$row['measurement_of_carton_length'].'</td>
                                    <td style="border: 1px solid">'.$row['measurement_of_carton_width'].'</td>
                                    <td style="border: 1px solid">'.$row['measurement_of_cartoon_height'].'</td>
                                    <td style="border: 1px solid">CM</td>  
                                    <td style="border: 1px solid">'.$row['ratio'].'</td>
                                    <td style="border: 1px solid">'.$row['roll_size'].'</td>
                                    <td style="border: 1px solid">'.$actual_ratio.'</td>
                                    <td style="border: 1px solid">'.$actual_roll_size.'</td> 
                                    <td style="border: 1px solid">'.$row['carton_quantity'].'</td> ';

                    //For Corrugation

                                 $travel_card_id=$row['travel_card_id']  ;   
                                 $measurement_of_carton_length=$row['measurement_of_carton_length']  ;   
                                 $measurement_of_carton_width=$row['measurement_of_carton_width'];   
                                 $measurement_of_cartoon_height=$row['measurement_of_cartoon_height'];  

                        $sql_for_process_exist = "SELECT DISTINCT *
                                                 From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp
                                                 where tcdft.po_id=addp.po_id
                                                   and tcdft.po_details_id=addp.po_details_id 
                                                   and addp.process_id = 'proc_1' 
                                                   and tcdft.travel_card_id='$travel_card_id' 

                                                ";
                  
                        $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                        if(mysqli_num_rows($result_for_process_exist)>0)  
                        {
                                $sql_for_process_wise = "SELECT DISTINCT pn.process_id,tcdft.process_quantity,pd.carton_quantity,( pd.carton_quantity - tcdft.process_quantity) short_access,tcdft.recording_person_name, tcdft.recording_time 
                                From travel_card_details_for_transactions tcdft 
                                Inner join po_details pd on tcdft.po_details_id=pd.po_details_id
                                Inner JOIN process_name pn on pn.process_id=tcdft.process_id
                                Inner JOIN adding_process_route_for_po addp on pn.process_id=addp.process_id
                                
                                where pn.process_id='proc_1' and tcdft.travel_card_id='$travel_card_id' ";
                      
                                $result_for_process_wise= mysqli_query($con,$sql_for_process_wise) or die(mysqli_error($con));

                                if(mysqli_num_rows($result_for_process_wise)>0)
                                {
                                     while( $row_for_process_wise = mysqli_fetch_array( $result_for_process_wise))
                                         {  
                                                    $date = $row_for_process_wise['recording_time'];
                                                    $date = date('m/d/Y', strtotime($date));

                                                    $table.='<td style="border: 1px solid">'.$date.'</td>
                                                    <td style="border: 1px solid">'.$row_for_process_wise['recording_person_name'].'</td>
                                                    <td style="border: 1px solid">'.$row_for_process_wise['process_quantity'].'</td>    
                                                    
                                                    <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>
                                                    <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>';
                                         }
                                }
                                else 
                                {
                                     $table.='<td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>   
                                              <td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>';
                                }
                        }
                        else
                        {
                            $table.=' <td style="border: 1px solid">N/A</td>
                                      <td style="border: 1px solid">N/A</td>   
                                      <td style="border: 1px solid">N/A</td>
                                      <td style="border: 1px solid">N/A</td>
                                      <td style="border: 1px solid">N/A</td>';
                        }


                        // For Printing & Slotting

                        $sql_for_process_exist = "SELECT DISTINCT *
                                                 From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp
                                                 where tcdft.po_id=addp.po_id
                                                   and tcdft.po_details_id=addp.po_details_id 
                                                   and addp.process_id = 'proc_2' 
                                                   and tcdft.travel_card_id='$travel_card_id' 

                                                    ";
                  
                        $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                        if(mysqli_num_rows($result_for_process_exist)>0)  
                        {
                                $sql_for_process_wise = "SELECT DISTINCT pn.process_id,tcdft.process_quantity,pd.carton_quantity,( pd.carton_quantity - tcdft.process_quantity) short_access,tcdft.recording_person_name, tcdft.recording_time 
                                From travel_card_details_for_transactions tcdft 
                                Inner join po_details pd on tcdft.po_details_id=pd.po_details_id
                                Inner JOIN process_name pn on pn.process_id=tcdft.process_id
                                Inner JOIN adding_process_route_for_po addp on pn.process_id=addp.process_id
                                
                                where pn.process_id='proc_2' and tcdft.travel_card_id='$travel_card_id'  ";
                      
                                $result_for_process_wise= mysqli_query($con,$sql_for_process_wise) or die(mysqli_error($con));

                                if(mysqli_num_rows($result_for_process_wise)>0)
                                {
                                     while( $row_for_process_wise = mysqli_fetch_array( $result_for_process_wise))
                                         {  
                                                    $date = $row_for_process_wise['recording_time'];
                                                    $date = date('m/d/Y', strtotime($date));

                                                    $table.='<td style="border: 1px solid">'.$date.'</td>
                                                            <td style="border: 1px solid">'.$row_for_process_wise['recording_person_name'].'</td>      
                                                            <td style="border: 1px solid">'.$row_for_process_wise['process_quantity'].'</td>
                                                            <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>
                                                            <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>';
                                         }
                                }
                                else 
                                { 
                                     $table.='<td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>   
                                              <td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>';
                                }
                        }
                        else
                        {
                                $table.=' <td style="border: 1px solid">N/A</td>
                                          <td style="border: 1px solid">N/A</td>   
                                          <td style="border: 1px solid">N/A</td>
                                          <td style="border: 1px solid">N/A</td>
                                          <td style="border: 1px solid">N/A</td>';
                        }



                        // For  Cutting Creasing

                        $sql_for_process_exist = "SELECT DISTINCT *
                                                 From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp
                                                 where tcdft.po_id=addp.po_id
                                                   and tcdft.po_details_id=addp.po_details_id 
                                                   and addp.process_id = 'proc_3' 
                                                   and tcdft.travel_card_id='$travel_card_id' 

                                                    ";
                  
                        $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                         if(mysqli_num_rows($result_for_process_exist)>0)  
                         {
                                $sql_for_process_wise = "SELECT DISTINCT pn.process_id,tcdft.process_quantity,pd.carton_quantity,( pd.carton_quantity - tcdft.process_quantity)  short_access,tcdft.recording_person_name, tcdft.recording_time 
                                         From travel_card_details_for_transactions tcdft
                                        Inner join po_details pd on tcdft.po_details_id=pd.po_details_id
                                        Inner JOIN process_name pn on pn.process_id=tcdft.process_id

                                        Inner JOIN adding_process_route_for_po addp on pn.process_id=addp.process_id
                                        
                                        where pn.process_id='proc_3'and tcdft.travel_card_id='$travel_card_id'  ";
                              
                                $result_for_process_wise= mysqli_query($con,$sql_for_process_wise) or die(mysqli_error($con));

                                if(mysqli_num_rows($result_for_process_wise)>0)
                                {
                                     while( $row_for_process_wise = mysqli_fetch_array( $result_for_process_wise))
                                         {  
                                                    $date = $row_for_process_wise['recording_time'];
                                                    $date = date('m/d/Y', strtotime($date));

                                                    $table.=' <td style="border: 1px solid">'.$date.'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['recording_person_name'].'</td>      
                                                              <td style="border: 1px solid">'.$row_for_process_wise['process_quantity'].'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>';
                                         }
                                }
                                else 
                                { 
                                     $table.='<td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>   
                                              <td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>
                                              <td style="border: 1px solid">0</td>';
                                }
                         }
                         else
                         {
                                $table.=' <td style="border: 1px solid">N/A</td>
                                          <td style="border: 1px solid">N/A</td>   
                                          <td style="border: 1px solid">N/A</td>
                                          <td style="border: 1px solid">N/A</td>
                                          <td style="border: 1px solid">N/A</td>';
                         }

                     


                         // For Die Cutting 

                            $sql_for_process_exist = "SELECT DISTINCT *
                                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp
                                                         where tcdft.po_id=addp.po_id
                                                           and tcdft.po_details_id=addp.po_details_id 
                                                           and addp.process_id = 'proc_4' 
                                                           and tcdft.travel_card_id='$travel_card_id' 

                                                        ";
                      
                            $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                             if(mysqli_num_rows($result_for_process_exist)>0)  
                             {
                                    $sql_for_process_wise = "SELECT DISTINCT pn.process_id,tcdft.process_quantity,pd.carton_quantity,( pd.carton_quantity - tcdft.process_quantity)  short_access,tcdft.recording_person_name, tcdft.recording_time  
                                    From travel_card_details_for_transactions tcdft
                                    Inner join po_details pd on tcdft.po_details_id=pd.po_details_id
                                    Inner JOIN process_name pn on pn.process_id=tcdft.process_id
                                    Inner JOIN adding_process_route_for_po addp on pn.process_id=addp.process_id
                                    
                                    where pn.process_id='proc_4' and tcdft.travel_card_id='$travel_card_id'  ";
                          
                                    $result_for_process_wise= mysqli_query($con,$sql_for_process_wise) or die(mysqli_error($con));

                                    if(mysqli_num_rows($result_for_process_wise)>0)
                                    {
                                         while( $row_for_process_wise = mysqli_fetch_array( $result_for_process_wise))
                                         {  
                                                    $date = $row_for_process_wise['recording_time'];
                                                    $date = date('m/d/Y', strtotime($date));

                                                    $table.=' <td style="border: 1px solid">'.$date.'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['recording_person_name'].'</td>      
                                                              <td style="border: 1px solid">'.$row_for_process_wise['process_quantity'].'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>';
                                         }
                                    }
                                   else 
                                    {  
                                         $table.='<td style="border: 1px solid">0</td>
                                                  <td style="border: 1px solid">0</td>   
                                                  <td style="border: 1px solid">0</td>
                                                  <td style="border: 1px solid">0</td>
                                                  <td style="border: 1px solid">0</td>';
                                    }
                             }
                             else
                             {
                                    $table.=' <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>   
                                              <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>';
                             }
                     


                           //Manual Slotting

                            $sql_for_process_exist = "SELECT DISTINCT *
                                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp
                                                         where tcdft.po_id=addp.po_id
                                                           and tcdft.po_details_id=addp.po_details_id 
                                                           and addp.process_id = 'proc_5' 
                                                           and tcdft.travel_card_id='$travel_card_id' 

                                                        ";
                      
                            $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                             if(mysqli_num_rows($result_for_process_exist)>0)  
                             {
                                    $sql_for_process_wise = "SELECT DISTINCT pn.process_id,tcdft.process_quantity,pd.carton_quantity,( pd.carton_quantity - tcdft.process_quantity)  short_access,tcdft.recording_person_name, tcdft.recording_time  
                                    From travel_card_details_for_transactions tcdft
                                    Inner join po_details pd on tcdft.po_details_id=pd.po_details_id
                                    Inner JOIN process_name pn on pn.process_id=tcdft.process_id
                                    Inner JOIN adding_process_route_for_po addp on pn.process_id=addp.process_id
                                    
                                    where pn.process_id='proc_5' and tcdft.travel_card_id='$travel_card_id'  ";

                                

                                    $result_for_process_wise= mysqli_query($con,$sql_for_process_wise) or die(mysqli_error($con));

                                     if(mysqli_num_rows($result_for_process_wise)>0)
                                    { 
                                         while( $row_for_process_wise = mysqli_fetch_array( $result_for_process_wise))
                                         {  
                                                    $date = $row_for_process_wise['recording_time'];
                                                    $date = date('m/d/Y', strtotime($date));

                                                    $table.=' <td style="border: 1px solid">'.$date.'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['recording_person_name'].'</td>      
                                                              <td style="border: 1px solid">'.$row_for_process_wise['process_quantity'].'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>';
                                         }
                                    }
                                    else 
                                    {   
                                         $table.='<td style="border: 1px solid">0</td>
                                                  <td style="border: 1px solid">0</td>   
                                                  <td style="border: 1px solid">0</td>
                                                  <td style="border: 1px solid">0</td>
                                                  <td style="border: 1px solid">0</td>';
                                    }
                             }
                             else
                             {
                                    $table.=' <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>   
                                              <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>';
                             }


                                 //Folding & Gluing 

                            $sql_for_process_exist = "SELECT DISTINCT *
                                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp
                                                         where tcdft.po_id=addp.po_id
                                                           and tcdft.po_details_id=addp.po_details_id 
                                                           and addp.process_id = 'proc_6' 
                                                           and tcdft.travel_card_id='$travel_card_id' 

                                                        ";
                      
                            $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                             if(mysqli_num_rows($result_for_process_exist)>0)  
                             {
                                    $sql_for_process_wise = "SELECT DISTINCT pn.process_id,tcdft.process_quantity,pd.carton_quantity,( pd.carton_quantity - tcdft.process_quantity)  short_access,tcdft.recording_person_name, tcdft.recording_time 
                                    From travel_card_details_for_transactions tcdft
                                    Inner join po_details pd on tcdft.po_details_id=pd.po_details_id
                                    Inner JOIN process_name pn on pn.process_id=tcdft.process_id

                                    
                                    where pn.process_id='proc_6' and tcdft.travel_card_id='$travel_card_id'  ";

                            

                                    $result_for_process_wise= mysqli_query($con,$sql_for_process_wise) or die(mysqli_error($con));

                                     if(mysqli_num_rows($result_for_process_wise)>0)
                                    { 
                                         while( $row_for_process_wise = mysqli_fetch_array( $result_for_process_wise))
                                         {  
                                                    $date = $row_for_process_wise['recording_time'];
                                                    $date = date('m/d/Y', strtotime($date));

                                                    $table.=' <td style="border: 1px solid">'.$date.'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['recording_person_name'].'</td>      
                                                              <td style="border: 1px solid">'.$row_for_process_wise['process_quantity'].'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>
                                                              <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>';
                                         }
                                    }
                                    else 
                                    {   
                                         $table.='<td style="border: 1px solid">0</td> 
                                                  <td style="border: 1px solid">0</td>  
                                                  <td style="border: 1px solid">0</td>
                                                  <td style="border: 1px solid">0</td>
                                                  <td style="border: 1px solid">0</td>';
                                    }
                             }
                             else
                             {
                                    $table.=' <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>   
                                              <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>
                                              <td style="border: 1px solid">N/A</td>';
                             }
                    
                         //Delivery

                              $sql_for_process_exist = "SELECT DISTINCT *
                                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp
                                                         where tcdft.po_id=addp.po_id
                                                           and tcdft.po_details_id=addp.po_details_id 
                                                           and addp.process_id = 'proc_7' 
                                                           and tcdft.travel_card_id='$travel_card_id' 

                                                        ";
                      
                                $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                                 if(mysqli_num_rows($result_for_process_exist)>0)  
                                 {
                                        $sql_for_process_wise = "SELECT DISTINCT pn.process_id,tcdft.process_quantity,pd.carton_quantity,( pd.carton_quantity - tcdft.process_quantity)  short_access,tcdft.recording_person_name, tcdft.recording_time 
                                        From travel_card_details_for_transactions tcdft
                                        Inner join po_details pd on tcdft.po_details_id=pd.po_details_id
                                        Inner JOIN process_name pn on pn.process_id=tcdft.process_id
                                        
                                        where pn.process_id='proc_7' and tcdft.travel_card_id='$travel_card_id'  ";
                      
                                        $result_for_process_wise= mysqli_query($con,$sql_for_process_wise) or die(mysqli_error($con));

                                         if(mysqli_num_rows($result_for_process_wise)>0)
                                        {
                                             while( $row_for_process_wise = mysqli_fetch_array( $result_for_process_wise))
                                             {  
                                                        $date = $row_for_process_wise['recording_time'];
                                                        $date = date('m/d/Y', strtotime($date));

                                                        $table.=' <td style="border: 1px solid">'.$date.'</td>
                                                                  <td style="border: 1px solid">'.$row_for_process_wise['recording_person_name'].'</td>      
                                                                  <td style="border: 1px solid">'.$row_for_process_wise['process_quantity'].'</td>
                                                                  <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>
                                                                  <td style="border: 1px solid">'.$row_for_process_wise['short_access'].'</td>';
                                             }
                                        }
                                        else 
                                        {  
                                             $table.='
                                             <td style="border: 1px solid">0</td>
                                             <td style="border: 1px solid">0</td>   
                                             <td style="border: 1px solid">0</td>
                                            <td style="border: 1px solid">0</td>
                                            <td style="border: 1px solid">0</td>';
                                        }
                                 }
                                 else
                                 {
                                        $table.=' <td style="border: 1px solid">N/A</td>
                                                  <td style="border: 1px solid">N/A</td>   
                                                  <td style="border: 1px solid">N/A</td>
                                                  <td style="border: 1px solid">N/A</td>
                                                  <td style="border: 1px solid">N/A</td>';
                                 }


                                    $sql_for_paper_consumtion = "SELECT DISTINCT         recording_person_name
                                                 From person_wise_transactions 
                                                 where travel_card_id='$travel_card_id' AND process_id = 'proc_1' AND (recording_person_name = 'mijan' OR recording_person_name = 'rejowan' OR recording_person_name = 'admin')
                                                ";
                  
                                    $result_for_paper_consumtion = mysqli_query($con,$sql_for_paper_consumtion) or die(mysqli_error($con));
                                    $row_for_paper_consumtion = mysqli_fetch_array( $result_for_paper_consumtion);
                             

                                    $table.='     
                                    
                                        <td style="border: 1px solid">'.$row_for_paper_consumtion['recording_person_name'].'</td>

                                        <td style="border: 1px solid">'.$row['liner_consumption_calc'].'</td>
                                        <td style="border: 1px solid">'.$row['media_consumption_calc'].'</td>

                                        <td style="border: 1px solid">'.$row['actual_used_linear'].'</td>
                                        <td style="border: 1px solid">'.$row['actual_used_medium'].'</td>

                                        <td style="border: 1px solid">'.$row['linear_extra_used'].'</td>
                                        <td style="border: 1px solid">'.$row['medium_extra_used'].'</td>

                                        <td style="border: 1px solid">'.$row['linear_percentage'].'</td>
                                        <td style="border: 1px solid">'.$row['medium_percentage'].'</td>
                                       ';   
                                   

                            $table.='</tr>';
                                   
                                        $counter_today=0;
                                        $total_monthly_terget = 0;
                                        $remaining_qty =0;
                                        $sl++;

                                      
                                            
          } /*End of while */                                    
         $table .='</tbody>
                     </table>
                     </div>';

         echo $table;
      



?>




<script>

function generate_pdf_for_machine_wise_production_summary(){
    

    let nbPages = 1;
    let sourceHtml = $('#element');

    
    html2pdf(sourceHtml[0], {
      margin: 1,
      filename: 'machine_wise_production_summary.pdf',
      image: { type: 'jpeg', quality: 0.98 },
     
      html2canvas: { dpi: 600, letterRendering: true, width: 2000, height: 3000  },
      jsPDF: { unit: 'pt', format: 'a4', orientation: 'portrait' }
    });  
}
</script>