<?php

error_reporting(0);
// Returniing Machine name By Process name
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


  $process_id=$_POST['process_id'];
  $travel_card_id=$_POST['travel_card_id'];


  $po_number="";
  $po_id="";
  $po_details_id="";
  $measurement_of_carton_width="";
  $measurement_of_cartoon_height="";
  $measurement_of_carton_length="";
  $measurement_of_cartoon_ply="";
  $current_process_index="";
  $option="";

   $sql_for_porcess_selection="SELECT DISTINCT aprfp.process_serial_no,aprfp.process_name,aprfp.process_id,pd.po_id,pd.po_number,
                             pd.measurement_of_carton_width, pd.measurement_of_cartoon_height,pd.measurement_of_carton_length,pd.measurement_of_cartoon_ply  from   travel_card_details_for_transactions tcdft
                        INNER JOIN adding_process_route_for_po aprfp ON tcdft.po_id=aprfp.po_id and tcdft.po_details_id=aprfp.po_details_id
                        INNER JOIN po_details pd ON tcdft.po_id=pd.po_id and tcdft.po_details_id=aprfp.po_details_id
                WHERE tcdft.travel_card_id='$travel_card_id'   order by process_serial_no asc ";
              
  $result_for_porcess_selection= mysqli_query($con,$sql_for_porcess_selection) or die(mysqli_error($con));
   






     while( $row_for_travel_card_process_selection = mysqli_fetch_array( $result_for_porcess_selection))
     {
       $data_for_all_process[] = $row_for_travel_card_process_selection['process_name'];
       $data_for_all_process_id[] = $row_for_travel_card_process_selection['process_id'];

              /*$po_number=$row_for_travel_card_process_selection['po_number'];
              $po_id=$row_for_travel_card_process_selection['po_id'];
              $po_details_id=$row_for_travel_card_process_selection['po_details_id'];
              $measurement_of_carton_width=$row_for_travel_card_process_selection['measurement_of_carton_width'];
              $measurement_of_cartoon_height=$row_for_travel_card_process_selection['measurement_of_cartoon_height'];
              $measurement_of_carton_length=$row_for_travel_card_process_selection['measurement_of_carton_length'];
              $measurement_of_cartoon_ply=$row_for_travel_card_process_selection['measurement_of_cartoon_ply'];*/
      
            
      
     }      
                 
                
        /* $current_process_index = array_search($process_name,$data_for_all_process);*/
         $current_process_id_index = array_search($process_id,$data_for_all_process_id);
         $current_process_id_index;

        
               
                 /*$for_current_process_name=$data_for_all_process[($current_process_index-1)];*/
                
                  $for_current_process_id=$data_for_all_process_id[($current_process_id_index-1)];
                 
                  $sql_for_process_name="select process_name from process_name where process_id='$for_current_process_id'";
                  $result_for_porcess_name= mysqli_query($con,$sql_for_process_name) or die(mysqli_error($con));

                  $row_for_travel_card_process_name = mysqli_fetch_assoc( $result_for_porcess_name);
                  

       

      echo $row_for_travel_card_process_name['process_name'];


?>