
<?php
error_reporting(0);
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

//$date = date("Y-m-d");




$sl=1;

// echo $process_name;




?>
<div class="container" id="full_div">

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

                <table class="table">
                    <thead>
                          <tr>
                            <td style="text-align: center; font-size: 15px; color: black; font-weight: bold;">
                             Carton Wastage Report
                            </td>
                            
                        </tr>
                    </thead>
                </table>

                
           <table class="table table-bordered" style="border: 2px solid black;" id="table_for_result_for_carton">
                    <thead>

                     
                            <tr style="background-color: #C0C0C0; border: 1px solid black;">                                
                               
                                <th rowspan="2" style="border: 1px solid">Travel Card ID</th>
                                <th rowspan="2" style="border: 1px solid">Process Name</th>
                                <th rowspan="2" style="border: 1px solid">As Per Travel Card Liner (KG)</th>
                                <th rowspan="2" style="border: 1px solid">As Per Travel Card Medium (KG)</th>
                                <th rowspan="2" style="border: 1px solid">Actual Used Liner (KG)</th>
                                <th rowspan="2" style="border: 1px solid">Actual Used Medium (KG)</th>
                                <th rowspan="2" style="border: 1px solid">Linear Extra Used (KG)</th>
                                <th rowspan="2" style="border: 1px solid">Medium Extra Used (KG)</th>
                                <th rowspan="2" style="border: 1px solid">Liner Percentage</th>
                                <th rowspan="2" style="border: 1px solid">Medium Percentage</th>


                                
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
                                    
                                 </tr>

                           
 

<?php 
     $sql_for_wastage = "SELECT DISTINCT 
                pd.paper_type_linear,pd.paper_type_medium, tcdft.actual_used_linear,tcdft.actual_used_medium,tcdft.process_name,tcdft.travel_card_id,(tcdft.actual_used_linear-pd.paper_type_linear) linear_extra_used,(tcdft.actual_used_medium-pd.paper_type_medium) medium_extra_used,((tcdft.actual_used_linear-pd.paper_type_linear)/tcdft.actual_used_linear) linear_percentage,((tcdft.actual_used_medium-pd.paper_type_medium)/tcdft.actual_used_medium) medium_percentage
                From travel_card_details_for_transactions tcdft
                left join po_details pd on tcdft.po_details_id=pd.po_details_id and tcdft.po_id=pd.po_id";            
   
         
        
         $result_for_wastage= mysqli_query($con,$sql_for_wastage) or die(mysqli_error($con));

         while( $row_for_wastage = mysqli_fetch_array( $result_for_wastage))
         {        

            // $split_timme=explode(" ", $row['recording_time']);

           


  
  ?>
                        <tr>       
                                    
                                    <td style="border: 1px solid"><?php echo $row['travel_card_id'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['process_name'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['paper_type_linear'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['paper_type_medium'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['actual_used_linear'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['actual_used_medium'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['linear_extra_used'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['medium_extra_used'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['linear_percentage'] ?></td>
                                    <td style="border: 1px solid"><?php echo $row['medium_percentage'] ?></td>
                        </tr>
                                   
                                   

                   
                     

         
      
          <?php
                      
             }


                      
                      
        ?>
              </tbody>
             </table>



                     

</div>



   <button id="excel_button" class="btn btn-success" ><a id="downloadLink" onclick="export_excel(this)" style="color: white;">Export to excel</a></button>

<script>

// function export_excel(elem) {
//     var full_div = document.getElementById("full_div");
//     var html = full_div.innerHTML;
//     var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
//     elem.setAttribute("href", url);
//     elem.setAttribute("download", "carton_wastage_report.xls"); // Choose the file name
//     return false;
// }


function export_excel(elem) {
    var table = document.getElementById("full_div");
    var html = table.innerHTML;
    var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
    elem.setAttribute("href", url);
    elem.setAttribute("download", "carton_wastage_report.xls"); // Choose the file name
    return false;
}




</script>

<script>
    // $(document).ready(function() {
                       
    //                     var table = $('#table_for_result_for_carton').DataTable( {
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