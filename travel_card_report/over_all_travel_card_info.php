<?php
error_reporting(0);
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

$sub_query='';
$i=1;
/*$travel_card_id=$_POST['travel_card_id_value'];
$version_number=$_POST['version_number_value'];
$color_value=$_POST['color_value'];
$design=$_POST['design'];
$process_name=$_POST['process_name'];*/


if(isset($_POST['travel_card_id_value']))
{
    $travel_card_id=$_POST['travel_card_id_value'];

   /* $sub_query.="and  pwvc.travel_card_id='".$travel_card_id."'";*/

}

$table ='<div><label class="form-control">Over All Information</label> </div>

			         <table id="table_for_over_all_travel_card" class="table table-striped table-bordered">

			           
			         	<thead>
			                 <tr>
			                 
			                 <th>Travel Card ID</th>
			                 <th>PO Number</th>
			                 <th>Customer Name</th>
			                 <th>Buyer Name</th>
			                 <th>PO Quantity</th>
			                 <th>Length</th>
			                 <th>Width</th>
			                 <th>Height</th>
			                 <th>Ply</th>
			                
			                 
			                 <th>Before Process Quantity</th>
			                 <th>Process Quantity</th>
			                 <th>Carton Quantity</th>
			                 <th>Short or Excess(Carton Qty-Process Qty.) </th>
			                 <th>Short or Excess(Before Process-Process Qty.) </th>

			                 <th>Current State</th>
			                 <th>Action</th>
			                 
			                 </tr>
			            </thead>
			            <tbody>';




					$sql = "select pc.po_number
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
									,tcdft.process_name
									,tcdft.before_process_quantity 

									,tcdft.process_quantity 
									,tcdft.travel_card_id 

									,round(((tcdft.before_process_quantity) - (tcdft.process_quantity)),2) short_or_excess
									,round(((pd.carton_quantity) - (tcdft.process_quantity)),2) short_or_excess_for_process_quantity
									from `travel_card_details`  tcdft 
									                            
									                            Inner join po_creation pc on tcdft.po_id=pc.po_id 
									                            Inner join po_details pd on tcdft.po_details_id=pd.po_details_id 
									                            where
									                             1=1";

		 $result= mysqli_query($con,$sql) or die(mysqli_error($con));

		 while( $row = mysqli_fetch_array( $result))
		 {    
              $table .='<tr>
			               
			                 <td>'.$row['travel_card_id'].'</td>
			                 <td>'.$row['po_number'].'</td>
			                 <td>'.$row['customer_name'].'</td>
			                 <td>'.$row['buyer_name'].'</td>
			                 <td>'.$row['po_quantity'].'</td>
			                 <td>'.$row['measurement_of_carton_length'].'</td>
			                 <td>'.$row['measurement_of_carton_width'].'</td>
			                 <td>'.$row['measurement_of_cartoon_height'].'</td>
			                 <td>'.$row['measurement_of_cartoon_ply'].'</td>
			                 
			                 
			                 <td>'.$row['before_process_quantity'].'</td>
			                 <td>'.$row['process_quantity'].'</td>
			                 <td>'.$row['carton_quantity'].'</td>
			                 <td>'.$row['short_or_excess_for_process_quantity'].'</td>
			                 <td>'.$row['short_or_excess'].'</td>

			                 <td>'.$row['process_name'].'</td>
			                 <td>
			                 <a href="process/pdf_for_travel_card_zzal_with_process.php?travel_card_id='.$row['travel_card_id'].'"><button class="btn btn-warning btn-xs" id="travel_card_pdf_generation" id="travel_card_pdf_generation"> Generate Travel Card</button></a>  </td>  
			                 </tr>';

			                 $i++;
		 }
		
			$table .='				 </tbody>
			         </table>';

		
		 echo $table;


?>

<script>
	$(document).ready(function() {
                       
                        var table = $('#table_for_over_all_travel_card').DataTable( {
                            scrollY:        "500px",
                            scrollX:        true,
                            scrollCollapse: true,
                            paging:         false,
                            columnDefs: [
                                { width: '0%', targets: 0 }
                            ],
                            dom: 'Bfrtip',
                            buttons: [
                                 'csv', 'excel', 'pdf', 'print'
                            ],
                            fixedColumns:   {
                                                leftColumns: 2,
                                                rightColumns: 1
                                            }

                        } );
                    } );
</script>