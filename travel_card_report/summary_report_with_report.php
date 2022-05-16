
<?php
//error_reporting(0);
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
    $from_date = date_format($from_date,"d-m-Y");
    

    //$sub_query.=" AND ((date_format(str_to_date(tcdft.recording_time, '%d-%m-%Y'), '%Y-%m-%d')) = '".$from_date."'";

    $sub_query.=" AND ((date_format(str_to_date(tcdft.recording_time, '%d-%m-%Y'), '%Y-%m-%d')) = '".$from_date."'";

}

 if(isset($_POST['to_date']) && isset($_POST['from_date']) && $_POST['to_date']!='')
{   
    
  $from_date=$_POST['from_date'];
  $from_date=date_create($from_date);
  $from_date = date_format($from_date,"d-m-Y"); 

  $to_date = $_POST['to_date'];
  $to_date = date_create($to_date);
  $to_date = date_format($to_date,"d-m-Y");
  //$to_date = strtotime("+1 day", $to_date);

  //$to_date = new DateTime($to_date);
  //$to_date->modify('+1 day');
  //$new_date = $to_date->format('d-m-Y');

  //$sub_query.=" AND (date_format(str_to_date(tcdft.recording_time, '%d-%m-%Y'), '%Y-%m-%d')) BETWEEN '".$from_date."' and '".$to_date."'";

  $sub_query.=" AND date(recording_time) BETWEEN STR_TO_DATE('".$from_date."','%d-%m-%Y') and STR_TO_DATE('".$to_date."','%d-%m-%Y') ";

  //$sub_query.=" AND recording_time >= STR_TO_DATE('".$from_date."','%d-%m-%Y') and recording_time < STR_TO_DATE('".$to_date."','%d-%m-%Y') ";
}

// if(isset($_POST['po_number']) && $_POST['po_number']!='' && $_POST['po_number']!='select')
// {   
//     $po_number=$_POST['po_number'];

//     $split_po=explode("?fs", $po_number);
//     $po_id=$split_po[0];

//     $sub_query.=" and  tcd.po_id='".$po_id."'";
//     //$sub_query.=" and  tcd.po_id='po_103'";


// }






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
                             Summary Report
                            </td>
                            
                        </tr>
                    </thead>
                </table>

                
           <table class="table table-bordered" style="border: 2px solid black;" id="table_for_result">
                    <thead>

                     
                            <tr style="background-color: #C0C0C0; border: 2px solid black;">
                                
                                <th rowspan="2" style="border: 1px solid">Date</th>


                                <th colspan="5" style="border: 1px solid">Corrugation</th>

                                <th colspan="5" style="border: 1px solid">Printing & Slotting </th>

                                <th colspan="5" style="border: 1px solid">Cutting Creasing</th>

                                <th colspan="5" style="border: 1px solid">Die Cutting </th>

                                <th colspan="5" style="border: 1px solid">Manual Slotting</th>

                                <th colspan="5" style="border: 1px solid">Folding & Gluing</th>

                                <th colspan="5" style="border: 1px solid">Delivery</th>

                                <th colspan="5" style="border: 1px solid">Summary</th>

                                <th colspan="4" style="border: 1px solid">Wastage</th>

                            </tr>
                            <tr style="background-color: #C0C0C0; border: 2px solid black;">
                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                <th style="border: 1px solid">Belt</th>

                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                <th style="border: 1px solid">Belt</th>

                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                <th style="border: 1px solid">Belt</th>
                                
                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                <th style="border: 1px solid">Belt</th>

                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                <th style="border: 1px solid">Belt</th>

                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                <th style="border: 1px solid">Belt</th>

                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                <th style="border: 1px solid">Belt</th>

                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                <th style="border: 1px solid">Belt</th>

                                <th style="border: 1px solid">Carton</th>
                                <th style="border: 1px solid">Stiffiner</th>
                                <th style="border: 1px solid">Top Bottom</th>
                                <th style="border: 1px solid">Platte</th>
                                
                            </tr>
                            </thead>

                            <tbody>';
                            
   
        $sql = "SELECT DISTINCT date(recording_time) recording_time
                FROM travel_card_details_for_transactions
                where 1=1 
                 
                ".$sub_query."";
       
         $result= mysqli_query($con, $sql) or die(mysqli_error($con));

         while( $row = mysqli_fetch_array( $result))
         {        

            $split_time = explode(" ", $row['recording_time']);

            $date = date_create($split_time[0]);
            $production_date = date_format($date,"Y/m/d"); 


            // $to_date=$_POST['to_date'];
            // $to_date=date_create($to_date);
            // $to_date = date_format($to_date,"d-m-Y");

            // $sub_query.=" AND recording_time BETWEEN STR_TO_DATE('".$from_date."','%d-%m-%Y') and STR_TO_DATE('".$to_date."','%d-%m-%Y') ";


            //For Corrugation

            $total_corrugation_carton = 0;
            $total_corrugation_stiffiner = 0;
            $total_corrugation_top_bottom = 0;
            $total_corrugation_platte = 0;
            $total_corrugation_belt = 0;

            $sql_for_process_exist = "SELECT DISTINCT tcdft.process_quantity, pc.product_category, date(tcdft.recording_time) recording_time
                                     From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp, po_creation pc
                                     where tcdft.po_id = addp.po_id
                                       and tcdft.po_details_id = addp.po_details_id 
                                       and tcdft.process_id = 'proc_1' 
                                       and DATE(tcdft.recording_time) = '$production_date' 
                                       and pc.po_id = tcdft.po_id
                                    ";
      
            $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

            if(mysqli_num_rows($result_for_process_exist)>0)  
            {
                    
                while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                 {  

                        $product_category = $row_for_process_wise['product_category'];
                        $process_quantity = $row_for_process_wise['process_quantity'];
                        if ($product_category == 'CARTON') 
                        {
                            $total_corrugation_carton = $total_corrugation_carton + $process_quantity;
                        }
                        else if($product_category == 'STIFFENER')
                        {
                            $total_corrugation_stiffiner = $total_corrugation_stiffiner + $process_quantity;
                        }
                        else if($product_category == 'Top Bottom')
                        {
                            $total_corrugation_top_bottom = $total_corrugation_top_bottom + $process_quantity;
                        }
                        else if($product_category == 'PLATTE')
                        {
                            $total_corrugation_platte = $total_corrugation_platte + $process_quantity;
                        }
                        else if($product_category == 'Belt')
                        {
                            $total_corrugation_belt = $total_corrugation_belt + $process_quantity;
                        }
                }
            }


            //For Printing & Slotting

            $total_printing_slotting_carton = 0;
            $total_printing_slotting_stiffiner = 0;
            $total_printing_slotting_top_bottom = 0;
            $total_printing_slotting_platte = 0;
            $total_printing_slotting_belt = 0;

            $sql_for_process_exist = "SELECT DISTINCT tcdft.process_quantity, pc.product_category, date(tcdft.recording_time) recording_time 
                                     From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp, po_creation pc
                                     where tcdft.po_id=addp.po_id
                                       and tcdft.po_details_id=addp.po_details_id 
                                       and tcdft.process_id = 'proc_2' 
                                       and DATE(tcdft.recording_time) = '$production_date' 
                                       and pc.po_id = tcdft.po_id
                                       and addp.po_id = pc.po_id
                                    ";
      
            $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

            if(mysqli_num_rows($result_for_process_exist)>0)  
            {
                    
                while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                 {  

                        $product_category = $row_for_process_wise['product_category'];
                        $process_quantity = $row_for_process_wise['process_quantity'];
                        if ($product_category == 'CARTON') 
                        {
                            $total_printing_slotting_carton = $total_printing_slotting_carton + $process_quantity;
                        }
                        else if($product_category == 'STIFFENER')
                        {
                            $total_printing_slotting_stiffiner = $total_printing_slotting_stiffiner + $process_quantity;
                        }
                        else if($product_category == 'Top Bottom')
                        {
                            $total_printing_slotting_top_bottom = $total_printing_slotting_top_bottom + $process_quantity;
                        }
                        else if($product_category == 'PLATTE')
                        {
                            $total_printing_slotting_platte = $total_printing_slotting_platte + $process_quantity;
                        }
                        else if($product_category == 'Belt')
                        {
                            $total_printing_slotting_belt = $total_printing_slotting_belt + $process_quantity;
                        }
                }
            }



            //For  Cutting Creasing

            $total_cutting_creasing_carton = 0;
            $total_cutting_creasing_stiffiner = 0;
            $total_cutting_creasing_top_bottom = 0;
            $total_cutting_creasing_platte = 0;
            $total_cutting_creasing_belt = 0;

            $sql_for_process_exist = "SELECT DISTINCT tcdft.process_quantity, pc.product_category, date(tcdft.recording_time) recording_time 
                                     From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp, po_creation pc
                                     where tcdft.po_id=addp.po_id
                                       and tcdft.po_details_id=addp.po_details_id 
                                       and tcdft.process_id = 'proc_3' 
                                       and DATE(tcdft.recording_time) = '$production_date' 
                                       and pc.po_id = tcdft.po_id
                                       and addp.po_id = pc.po_id
                                    ";
      
            $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

            if(mysqli_num_rows($result_for_process_exist)>0)  
            {
                    
                while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                 {  

                        $product_category = $row_for_process_wise['product_category'];
                        $process_quantity = $row_for_process_wise['process_quantity'];
                        if ($product_category == 'CARTON') 
                        {
                            $total_cutting_creasing_carton = $total_cutting_creasing_carton + $process_quantity;
                        }
                        else if($product_category == 'STIFFENER')
                        {
                            $total_cutting_creasing_stiffiner = $total_cutting_creasing_stiffiner + $process_quantity;
                        }
                        else if($product_category == 'Top Bottom')
                        {
                            $total_cutting_creasing_top_bottom = $total_cutting_creasing_top_bottom + $process_quantity;
                        }
                        else if($product_category == 'PLATTE')
                        {
                            $total_cutting_creasing_platte = $total_cutting_creasing_platte + $process_quantity;
                        }
                        else if($product_category == 'Belt')
                        {
                            $total_cutting_creasing_belt = $total_cutting_creasing_belt + $process_quantity;
                        }
                }
            }

         


             //For Die Cutting 

                $total_die_cutting_carton = 0;
                $total_die_cutting_stiffiner = 0;
                $total_die_cutting_top_bottom = 0;
                $total_die_cutting_platte = 0;
                $total_die_cutting_belt = 0;

                $sql_for_process_exist = "SELECT DISTINCT tcdft.process_quantity, pc.product_category, date(tcdft.recording_time) recording_time 
                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp, po_creation pc
                                         where tcdft.po_id=addp.po_id
                                           and tcdft.po_details_id=addp.po_details_id 
                                           and tcdft.process_id = 'proc_4' 
                                           and DATE(tcdft.recording_time) = '$production_date' 
                                           and pc.po_id = tcdft.po_id
                                           and addp.po_id = pc.po_id
                                        ";
          
                $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                if(mysqli_num_rows($result_for_process_exist)>0)  
                {
                        
                    while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                     {  

                            $product_category = $row_for_process_wise['product_category'];
                            $process_quantity = $row_for_process_wise['process_quantity'];
                            if ($product_category == 'CARTON') 
                            {
                                $total_die_cutting_carton = $total_die_cutting_carton + $process_quantity;
                            }
                            else if($product_category == 'STIFFENER')
                            {
                                $total_die_cutting_stiffiner = $total_die_cutting_stiffiner + $process_quantity;
                            }
                            else if($product_category == 'Top Bottom')
                            {
                                $total_die_cutting_top_bottom = $total_die_cutting_top_bottom + $process_quantity;
                            }
                            else if($product_category == 'PLATTE')
                            {
                                $total_die_cutting_platte = $total_die_cutting_platte + $process_quantity;
                            }
                            else if($product_category == 'Belt')
                            {
                                $total_die_cutting_belt = $total_die_cutting_belt + $process_quantity;
                            }
                    }
                }
         


               //Manual Slotting

                $total_manual_slotting_carton = 0;
                $total_manual_slotting_stiffiner = 0;
                $total_manual_slotting_top_bottom = 0;
                $total_manual_slotting_platte = 0;
                $total_manual_slotting_belt = 0;

                $sql_for_process_exist = "SELECT DISTINCT tcdft.process_quantity, pc.product_category, date(tcdft.recording_time) recording_time 
                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp, po_creation pc
                                         where tcdft.po_id=addp.po_id
                                           and tcdft.po_details_id=addp.po_details_id 
                                           and tcdft.process_id = 'proc_5' 
                                           and DATE(tcdft.recording_time) = '$production_date' 
                                           and pc.po_id = tcdft.po_id
                                           and addp.po_id = pc.po_id
                                        ";
          
                $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                if(mysqli_num_rows($result_for_process_exist)>0)  
                {
                        
                    while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                     {  

                            $product_category = $row_for_process_wise['product_category'];
                            $process_quantity = $row_for_process_wise['process_quantity'];
                            if ($product_category == 'CARTON') 
                            {
                                $total_manual_slotting_carton = $total_manual_slotting_carton + $process_quantity;
                            }
                            else if($product_category == 'STIFFENER')
                            {
                                $total_manual_slotting_stiffiner = $total_manual_slotting_stiffiner + $process_quantity;
                            }
                            else if($product_category == 'Top Bottom')
                            {
                                $total_manual_slotting_top_bottom = $total_manual_slotting_top_bottom + $process_quantity;
                            }
                            else if($product_category == 'PLATTE')
                            {
                                $total_manual_slotting_platte = $total_manual_slotting_platte + $process_quantity;
                            }
                            else if($product_category == 'Belt')
                            {
                                $total_manual_slotting_belt = $total_manual_slotting_belt + $process_quantity;
                            }
                    }
                }


               // Folding & Gluing 

                $total_folding_gluing_carton = 0;
                $total_folding_gluing_stiffiner = 0;
                $total_folding_gluing_top_bottom = 0;
                $total_folding_gluing_platte = 0;
                $total_folding_gluing_belt = 0;

                $sql_for_process_exist = "SELECT DISTINCT tcdft.process_quantity, pc.product_category, date(tcdft.recording_time) recording_time 
                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp, po_creation pc
                                         where tcdft.po_id=addp.po_id
                                           and tcdft.po_details_id=addp.po_details_id 
                                           and tcdft.process_id = 'proc_6' 
                                           and DATE(tcdft.recording_time) = '$production_date' 
                                           and pc.po_id = tcdft.po_id
                                           and addp.po_id = pc.po_id
                                        ";
          
                $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                if(mysqli_num_rows($result_for_process_exist)>0)  
                {
                        
                    while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                     {  

                            $product_category = $row_for_process_wise['product_category'];
                            $process_quantity = $row_for_process_wise['process_quantity'];
                            if ($product_category == 'CARTON') 
                            {
                                $total_folding_gluing_carton = $total_folding_gluing_carton + $process_quantity;
                            }
                            else if($product_category == 'STIFFENER')
                            {
                                $total_folding_gluing_stiffiner = $total_folding_gluing_stiffiner + $process_quantity;
                            }
                            else if($product_category == 'Top Bottom')
                            {
                                $total_folding_gluing_top_bottom = $total_folding_gluing_top_bottom + $process_quantity;
                            }
                            else if($product_category == 'PLATTE')
                            {
                                $total_folding_gluing_platte = $total_folding_gluing_platte + $process_quantity;
                            }
                            else if($product_category == 'Belt')
                            {
                                $total_folding_gluing_belt = $total_folding_gluing_belt + $process_quantity;
                            }
                    }
                }


        
             //Delivery

                  
                $total_delivery_carton = 0;
                $total_delivery_stiffiner = 0;
                $total_delivery_top_bottom = 0;
                $total_delivery_platte = 0;
                $total_delivery_belt = 0;

                $sql_for_process_exist = "SELECT DISTINCT tcdft.process_quantity, pc.product_category, date(tcdft.recording_time) recording_time 
                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp, po_creation pc
                                         where tcdft.po_id=addp.po_id
                                           and tcdft.po_details_id=addp.po_details_id 
                                           and tcdft.process_id = 'proc_7' 
                                           and DATE(tcdft.recording_time) = '$production_date' 
                                           and pc.po_id = tcdft.po_id
                                           and addp.po_id = pc.po_id
                                        ";
          
                $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                if(mysqli_num_rows($result_for_process_exist)>0)  
                {
                        
                    while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                     {  

                            $product_category = $row_for_process_wise['product_category'];
                            $process_quantity_delivary = $row_for_process_wise['process_quantity'];
                            if ($product_category == 'CARTON') 
                            {
                                $total_delivery_carton = $total_delivery_carton + $process_quantity_delivary;
                            }
                            else if($product_category == 'STIFFENER')
                            {
                                $total_delivery_stiffiner = $total_delivery_stiffiner + $process_quantity_delivary;
                            }
                            else if($product_category == 'Top Bottom')
                            {
                                $total_delivery_top_bottom = $total_delivery_top_bottom + $process_quantity_delivary;
                            }
                            else if($product_category == 'PLATTE')
                            {
                                $total_delivery_platte = $total_delivery_platte + $process_quantity_delivary;
                            }
                            else if($product_category == 'Belt')
                            {
                                $total_delivery_belt = $total_delivery_belt + $process_quantity_delivary;
                            }
                    }
                }


            //Summary

                  
                $total_summary_carton = 0;
                $total_summary_stiffiner = 0;
                $total_summary_top_bottom = 0;
                $total_summary_platte = 0;
                $total_summary_belt = 0;


                $sql_for_process_exist = "SELECT DISTINCT MAX(addp.process_serial_no) process_serial_no,tcdft.process_id, addp.po_id,  addp.po_details_id , tcdft.travel_card_id
                                          From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp
                                          where tcdft.po_id = addp.po_id
                                           and tcdft.po_details_id = addp.po_details_id  
                                           and tcdft.process_id = 'proc_7'
                                           GROUP BY tcdft.travel_card_id
                                        ";


                $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                if(mysqli_num_rows($result_for_process_exist)>0)  
                {
                        
                    while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                     {  

                            $process_serial_no = $row_for_process_wise['process_serial_no'];
                            $process_id = $row_for_process_wise['process_id'];
                            $po_id = $row_for_process_wise['po_id'];
                            $po_details_id = $row_for_process_wise['po_details_id'];
                            $travel_card_id = $row_for_process_wise['travel_card_id'];
                            $main_process_serial_no = (int)$process_serial_no - 1;




                            $sql_for_process_exist = "SELECT DISTINCT tcdft.process_quantity, pc.product_category, date(tcdft.recording_time) recording_time 
                                         From travel_card_details_for_transactions tcdft, adding_process_route_for_po addp, po_creation pc
                                         where tcdft.po_id=addp.po_id
                                           and tcdft.po_details_id=addp.po_details_id 
                                           and addp.process_id = tcdft.process_id
                                           and addp.process_serial_no = $main_process_serial_no
                                           and DATE(tcdft.recording_time) = '$production_date' 
                                           and pc.po_id = tcdft.po_id
                                           and addp.po_id = pc.po_id
                                        ";
          
                            $result_for_process_exist= mysqli_query($con,$sql_for_process_exist) or die(mysqli_error($con));

                            if(mysqli_num_rows($result_for_process_exist)>0)  
                            {
                                    
                                while( $row_for_process_wise =mysqli_fetch_array( $result_for_process_exist))
                                 {
                                        //others 
                                        $product_category = $row_for_process_wise['product_category'];
                                        $process_quantity = $row_for_process_wise['process_quantity'];
                                        if ($product_category == 'CARTON') 
                                        {
                                            $total_summary_carton = $total_summary_carton + $process_quantity;
                                        }
                                        else if($product_category == 'STIFFENER')
                                        {
                                            $total_summary_stiffiner = $total_summary_stiffiner + $process_quantity;
                                        }
                                        else if($product_category == 'Top Bottom')
                                        {
                                            $total_summary_top_bottom = $total_summary_top_bottom + $process_quantity;
                                        }
                                        else if($product_category == 'PLATTE')
                                        {
                                            $total_summary_platte = $total_summary_platte + $process_quantity;
                                        }
                                        else if($product_category == 'Belt')
                                        {
                                            $total_summary_belt = $total_summary_belt + $process_quantity;
                                        }
                                 }

                            }
                    }
                }



            $table.='
                    <tr style="border: 1px solid black;">
                    <td style="border: 1px solid">'.$production_date.'</td>';

            //corrogation
            $table.='<td style="border: 1px solid">'.$total_corrugation_carton.'</td>
                    <td style="border: 1px solid">'.$total_corrugation_stiffiner.'</td>
                    <td style="border: 1px solid">'.$total_corrugation_top_bottom.'</td> 
                    <td style="border: 1px solid">'.$total_corrugation_platte.'</td>
                    <td style="border: 1px solid">'.$total_corrugation_belt.'</td>';


            //Printing & Slotting
            $table.='<td style="border: 1px solid">'.$total_printing_slotting_carton.'</td>
                    <td style="border: 1px solid">'.$total_printing_slotting_stiffiner.'</td>
                    <td style="border: 1px solid">'.$total_printing_slotting_top_bottom.'</td> 
                    <td style="border: 1px solid">'.$total_printing_slotting_platte.'</td>
                    <td style="border: 1px solid">'.$total_printing_slotting_belt.'</td>';


            //Cutting Creasing
            $table.='<td style="border: 1px solid">'.$total_cutting_creasing_carton.'</td>
                    <td style="border: 1px solid">'.$total_cutting_creasing_stiffiner.'</td>
                    <td style="border: 1px solid">'.$total_cutting_creasing_top_bottom.'</td> 
                    <td style="border: 1px solid">'.$total_cutting_creasing_platte.'</td>
                    <td style="border: 1px solid">'.$total_cutting_creasing_belt.'</td>';


            //Die Cutting
            $table.='<td style="border: 1px solid">'.$total_die_cutting_carton.'</td>
                    <td style="border: 1px solid">'.$total_die_cutting_stiffiner.'</td>
                    <td style="border: 1px solid">'.$total_die_cutting_top_bottom.'</td> 
                    <td style="border: 1px solid">'.$total_die_cutting_platte.'</td>
                    <td style="border: 1px solid">'.$total_die_cutting_belt.'</td>';


            //Manual Slotting
            $table.='<td style="border: 1px solid">'.$total_manual_slotting_carton.'</td>
                    <td style="border: 1px solid">'.$total_manual_slotting_stiffiner.'</td>
                    <td style="border: 1px solid">'.$total_manual_slotting_top_bottom.'</td> 
                    <td style="border: 1px solid">'.$total_manual_slotting_platte.'</td>
                    <td style="border: 1px solid">'.$total_manual_slotting_belt.'</td>';


            //Folding & Gluing
            $table.='<td style="border: 1px solid">'.$total_folding_gluing_carton.'</td>
                    <td style="border: 1px solid">'.$total_folding_gluing_stiffiner.'</td>
                    <td style="border: 1px solid">'.$total_folding_gluing_top_bottom.'</td> 
                    <td style="border: 1px solid">'.$total_folding_gluing_platte.'</td>
                    <td style="border: 1px solid">'.$total_folding_gluing_belt.'</td>';


            //Delivery
            $table.='<td style="border: 1px solid">'.$total_delivery_carton.'</td>
                    <td style="border: 1px solid">'.$total_delivery_stiffiner.'</td>
                    <td style="border: 1px solid">'.$total_delivery_top_bottom.'</td> 
                    <td style="border: 1px solid">'.$total_delivery_platte.'</td>
                    <td style="border: 1px solid">'.$total_delivery_belt.'</td>';



            //Summary
            $table.='<td style="border: 1px solid">'.$total_summary_carton.'</td>
                    <td style="border: 1px solid">'.$total_summary_stiffiner.'</td>
                    <td style="border: 1px solid">'.$total_summary_top_bottom.'</td> 
                    <td style="border: 1px solid">'.$total_summary_platte.'</td>
                    <td style="border: 1px solid">'.$total_summary_belt.'</td>';


            //wastage
            $table.='<td style="border: 1px solid">0</td>
                    <td style="border: 1px solid">0</td>
                    <td style="border: 1px solid">0</td> 
                    <td style="border: 1px solid">0</td>';

            $table.='</tr>';
                                            
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
      filename: 'summary_report.pdf',
      image: { type: 'jpeg', quality: 0.98 },
     
      html2canvas: { dpi: 600, letterRendering: true, width: 2000, height: 3000  },
      jsPDF: { unit: 'pt', format: 'a4', orientation: 'portrait' }
    });  
}
</script>