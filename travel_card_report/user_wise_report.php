
<?php
error_reporting(0);
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

 $user_access =$_SESSION['user_access'];
 $user_name=$_SESSION['user_name'];

//$date = date("Y-m-d");




$sl=1;

// echo $process_name;




?>
<div class="container" id="full_div_for_user">

                 <table class="table">
                    <thead>
                          <tr>
                            <td style="text-align: center; font-size: 25px; color: black; font-weight: bold;">
                            Zaber & Zubair Accessories Ltd.
                            </td>

                            
                            
                        </tr>

                         <tr>
                            
                        <td style="text-align: center; font-size: 20px; color: black; font-weight: bold;">
                            Mawna, Sreepur, Gazipur, Dhaka
                        </td>

                            
                            
                        </tr>

                    </thead>
                </table>

               <!--  <table class="table">
                    <thead>
                          <tr>
                            <td style="text-align: center; font-size: 15px; color: black; font-weight: bold;">
                             Carton Wastage Report
                            </td>
                            
                        </tr>
                    </thead>
                </table> -->

                
           <table class="table table-bordered" style="border: 2px solid black;" id="table_for_result_for_user">
                    <thead>

                     
                            <tr style="background-color: #C0C0C0; border: 1px solid black;">                                
                               
                                <th rowspan="2" style="border: 1px solid">SL NO.</th>
                                <th rowspan="2" style="border: 1px solid">Travel NO</th>
                                <th rowspan="2" style="border: 1px solid">Production date</th>
                                <th rowspan="2" style="border: 1px solid">Delivery Date</th>
                                <th rowspan="2" style="border: 1px solid">PO Number</th>
                                <th rowspan="2" style="border: 1px solid">Customer Name</th>
                                <th rowspan="2" style="border: 1px solid">Buyer Name</th>
                                <th rowspan="2" style="border: 1px solid">PO quantity</th>
                                <th rowspan="2" style="border: 1px solid">Length</th>
                                <th rowspan="2" style="border: 1px solid">Width</th>
                                <th rowspan="2" style="border: 1px solid">Height</th>
                                <th rowspan="2" style="border: 1px solid">Ply</th>
                                <th rowspan="2" style="border: 1px solid"> Quantity</th>
                                <th rowspan="2" style="border: 1px solid"> Process Quantity</th>
                                <th rowspan="2" style="border: 1px solid">Balance Quantity</th>


                                
                            </tr>
                       </thead>
                        <tbody>  
                                <tr>       
                                    
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    <td style="border: 1px solid; display: none;"></td>
                                    
                                 </tr>

                           
 

<?php 

    
    $sql_for_user = "SELECT DISTINCT tcdft.travel_card_creation_date, tcdft.travel_card_id, pc.product_delivery_date, pc.customer_name, pc.buyer_name, pc.po_number, 
    pc.product_category, pc.po_quantity, pd.measurement_of_cartoon_ply, pd.paper_type_linear, pd.paper_type_medium, pd.measurement_of_carton_length,
     pd.measurement_of_carton_width, pd.measurement_of_cartoon_height, pd.ratio,pd.roll_size, pd.carton_quantity, pd.paper_type_linear_1, 
    pd.paper_type_medium_1, pd.paper_type_medium_2, pc.po_id From 
    travel_card_details_for_transactions tcdft 
    inner join adding_process_route_for_po adrp on adrp.po_id=tcdft.po_id and tcdft.po_details_id=adrp.po_details_id  and tcdft.process_id=adrp.process_id
    left join po_creation pc on tcdft.po_id=pc.po_id 
    left join po_details pd on tcdft.po_details_id=pd.po_details_id and tcdft.po_id=pd.po_id 
    WHERE 1=1 and tcdft.process_id <>'$user_access'";            
   
  


               // left join adding_process_route_for_po adrp on adrp.po_id=tcdft.po_id and tcdft.po_id=adrp.po_id  and tcdft.process_id=adrp.process_id
        
         $result_for_user= mysqli_query($con,$sql_for_user) or die(mysqli_error($con));

         while( $row_for_user = mysqli_fetch_array( $result_for_user))
         {        

               echo $travel_card_id=$row_for_user['travel_card_id'];
               
               if($row_for_user['process_id'] == $user_access )

               {

                        
                }
               else
               {
                     


                          // $sql_for_selecting_process = "SELECT DISTINCT process_id From adding_process_route_for_po   where process_id='$user_access'";            
                           
                                
                          

                                      
                                
                          //        $result_for_selecting_process= mysqli_query($con,$sql_for_selecting_process) or die(mysqli_error($con));

                          //        while( $row_for_selecting_process = mysqli_fetch_array( $result_for_selecting_process))
                          //        {        
                                 

                                    echo $sql_for_quantity = "SELECT DISTINCT process_id,process_quantity From travel_card_details_for_transactions  tcdft
                                                                 where tcdft.process_id='$user_access' and tcdft.travel_card_id='$travel_card_id'";            
                                   
                                       


                                               // left join adding_process_route_for_po adrp on adrp.po_id=tcdft.po_id and tcdft.po_id=adrp.po_id  and tcdft.process_id=adrp.process_id
                                        
                                         $result_for_quantity= mysqli_query($con,$sql_for_quantity) or die(mysqli_error($con));

                                         $row_for_quantity = mysqli_fetch_assoc( $result_for_quantity);


                                         if(mysqli_num_rows($result_for_quantity)>0)
                                         {


                                 



                         ?>
                         <tr>       
                                    
                                    <td style="border: 1px solid"><?php echo $sl?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['travel_card_id'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['travel_card_creation_date'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['product_delivery_date'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['po_number'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['customer_name'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['buyer_name'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['po_quantity'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['measurement_of_carton_length'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['measurement_of_carton_width'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['measurement_of_cartoon_height'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['measurement_of_cartoon_ply'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_user['carton_quantity'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row_for_quantity['process_quantity'] ?></td>
                                    <td style="border: 1px solid"></td>
                        </tr>

                       
              
                       
                                   
                                   

                   
                     

         
      
          <?php 


                                      //}   


                            }




           }
  


                   $sl++;     
             }

    
                      
                      
        ?>
              </tbody>
             </table>



                     

</div>



   <button id="excel_button" class="btn btn-success" ><a id="downloadLink" onclick="export_excel(this)" style="color: white;">Export to excel</a></button>

<script>

function export_excel(elem) {
    var table = document.getElementById("full_div_for_user");
    var html = table.innerHTML;
    var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
    elem.setAttribute("href", url);
    elem.setAttribute("download", "carton_wastage_report.xls"); // Choose the file name
    return false;
}




</script>

<script>
    // $(document).ready(function() {
                       
    //                     var table = $('#table_for_result_for_user').DataTable( {
    //                         scrollY:        "500px",
    //                         scrollX:        true,
    //                         scrollCollapse: true,
    //                         paging:         false,
    //                         columnDefs: [
    //                             { width: '0%', targets: 0 }
    //                         ],
    //                         // dom: 'Bfrtip',
    //                         // buttons: [
    //                         //      'csv', 'excel', 'pdf', 'print'
    //                         // ],
    //                         fixedColumns:   {
    //                                             leftColumns: 2,
    //                                             rightColumns: 1
    //                                         }

    //                     } );
    //                 } );
</script>