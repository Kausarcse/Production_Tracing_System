<?php
error_reporting(0);
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



?>


<style>

.form-group		/* This is for reducing Gap among Form's Fields */
{

	margin-bottom: 5px;

}

</style>



<script>

function Remove_Value_Of_This_Element(element_name)
{

	 document.getElementById(element_name).value='';
	 var alternate_field_of_date = "alternate_"+element_name;

	 if(typeof(alternate_field_of_date) != 'undefined' && alternate_field_of_date != null) // This is for deleting Alternative Field of Date if exists
	 {
		document.getElementById(alternate_field_of_date).value='';
	 }

}

function Reset_Radio_Button(radio_element)
{

		var radio_btn = document.getElementsByName(radio_element);
		for(var i=0;i<radio_btn.length;i++) 
		{
				radio_btn[i].checked = false;
		}


}
function scripting_table()
{

	$(document).ready(function() {
                       
                        var table = $('#table_for_result').DataTable( {
                            scrollY:        "500px",
                            scrollX:        true,
                            scrollCollapse: true,
                            paging:         true,
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
}

function date_range_wise_summary_details()
    { 
        //alert(document.getElementById('from_date').value);

         var url_encoded_form_data = $("#date_range_wise_summary").serialize(); //This will read all control elements value of the form 
     
// alert(url_encoded_form_data);

             $.ajax({
                    url: 'process/date_range_wise_transaction_data_table.php',
                    dataType: 'text',
                    type: 'post',
                    contentType: 'application/x-www-form-urlencoded',
                    data: url_encoded_form_data,
                    success: function( data, textStatus, jQxhr )
                    {
                            // alert(data);



                            //  document.getElementById('machine_wise_summary_full_div').style.display="none";
                          
                            document.getElementById('date_range_wise_transaction').innerHTML=data;
                            // $("#excel_button").show();
                            // scripting_table();


                            
                    },
                    error: function( jqXhr, textStatus, errorThrown )
                    {
                            //console.log( errorThrown );
                            alert(errorThrown);
                    }
             }); // End of $.ajax({

       }//End of if(validate != false)


 /***************************************************** FOR AUTO COMPLETE********************************************************************/
$(document).ready(function() {
$('.for_auto_complete_po').chosen();

 } );
/***************************************************** FOR AUTO COMPLETE********************************************************************/

</script>





<div class="col-sm-12 col-md-12 col-lg-12">
    <div id="for_all_page_load">
		
        




<div id="date_range_wise_transaction">

   <div class="panel panel-default" id="table_load">


		<?php 


			$user_name = $_SESSION['user_name'];

			$sql_for_process_name = "SELECT DISTINCT user_access FROM user_login WHERE user_name = '$user_name'";

				$res_for_process_name = mysqli_query($con, $sql_for_process_name);

				$row2 = mysqli_fetch_assoc($res_for_process_name);
				$process_name = $row2['user_access'];
				$process_id = $row2['user_access'];

				?>
				
					<table id="datatable-buttons" class="table table-striped table-bordered" >
						<thead >
							 <tr>
								 <th style="text-align: center;">SI</th>
								 <th style="text-align: center;">Travel Card</th>
								 <th style="text-align: center;">PO Number</th>
								 <th style="text-align: center;">Customer Name</th>
								 <th style="text-align: center;">Buyer Name</th>
								 <th style="text-align: center;">Order Type</th>
								 <th style="text-align: center;">Length</th>
								 <th style="text-align: center;">Width</th>
								 <th style="text-align: center;">Height</th>
								 <th style="text-align: center;">Ply</th>
								 <th style="text-align: center;">Measurement Qty</th>
								 <th style="text-align: center;">Before Process Input  Qty.</th>
								 <th style="text-align: center;">Balance Quantity</th>

								 <th style="text-align: center;">Upcoming Process</th>
     						 </tr>
						</thead>
						<tbody>
						<?php 
							// $today_date = date("d-m-Y");
							$s1 = 1;

							$sql_for_color = "SELECT DISTINCT tcdft.travel_card_id
												from travel_card_details tcd

												LEFT JOIN travel_card_details_for_transactions tcdft ON tcdft.travel_card_id = tcd.travel_card_id
												LEFT JOIN adding_process_route_for_po adp ON tcdft.po_id = adp.po_id and tcdft.po_details_id = adp.po_details_id

												WHERE 
												tcdft.travel_card_id NOT IN (SELECT travel_card_id FROM travel_card_details_for_transactions WHERE process_id = 'proc_7')"; 

							$res_for_color = mysqli_query($con, $sql_for_color);

							while ($row = mysqli_fetch_assoc($res_for_color)) 
							{
								$travel_card_id = $row['travel_card_id'];

								//sql for travel card wise running process
								$sql_for_running_process = "SELECT DISTINCT tcdft.po_id, tcdft.po_details_id, tcdft.process_name, tcdft.process_quantity, app.process_name, app.process_id, app.row_id from travel_card_details_for_transactions tcdft

														LEFT JOIN adding_process_route_for_po app on app.po_id = tcdft.po_id and app.po_details_id = tcdft.po_details_id

														WHERE tcdft.travel_card_id = '$travel_card_id' 
														AND tcdft.process_id IN (  SELECT * FROM (SELECT DISTINCT process_id FROM travel_card_details_for_transactions WHERE travel_card_id = '$travel_card_id' ORDER BY row_id DESC LIMIT 1) as process_id)
														AND tcdft.process_id = app.process_id
														ORDER BY app.row_id DESC ";

								$res_for_running_process = mysqli_query($con, $sql_for_running_process);

							    $row_running_process = mysqli_fetch_assoc($res_for_running_process);
								$running_process_name = $row_running_process['process_name'];		
								$running_process_id = $row_running_process['process_id'];		
								$running_process_quantity = $row_running_process['process_quantity'];		
								$running_app_row_id = $row_running_process['row_id'];		
								$running_po_details_id = $row_running_process['po_details_id'];		
								$running_po_id = $row_running_process['po_id'];	

								//find out by sql for next process information
								$upcoming_app_row_id = (int) $running_app_row_id + 1;	

								 $sql_for_upcoming_process = "SELECT DISTINCT app.*, pc.buyer_name, pc.customer_name, pc.order_type,
								 pd.measurement_of_carton_length, pd.measurement_of_carton_width, pd.measurement_of_cartoon_height, pd.measurement_of_cartoon_ply, pd.carton_quantity FROM travel_card_details_for_transactions tcdft, adding_process_route_for_po app, po_creation pc, po_details pd
									WHERE tcdft.travel_card_id = '$travel_card_id' 
									and app.po_id = tcdft.po_id
									and app.po_details_id = tcdft.po_details_id
									and app.row_id = $upcoming_app_row_id
									and pc.po_id = app.po_id 
									and pd.po_details_id = tcdft.po_details_id  
									and pd.po_id = tcdft.po_id";

								$res_for_upcoming_process = mysqli_query($con, $sql_for_upcoming_process);

							    $row_upcoming_process = mysqli_fetch_assoc($res_for_upcoming_process);	

							    $upcoming_process_id = $row_upcoming_process['process_id'];
							    $upcoming_process_name = $row_upcoming_process['process_name'];

							    $po_number = $row_upcoming_process['po_number'];
							    $customer_name = $row_upcoming_process['customer_name'];
							    $buyer_name = $row_upcoming_process['buyer_name'];
							    $order_type = $row_upcoming_process['order_type'];
							    $length = $row_upcoming_process['measurement_of_carton_length'];
							    $height = $row_upcoming_process['measurement_of_cartoon_height'];
							    $width = $row_upcoming_process['measurement_of_carton_width'];
							    $ply = $row_upcoming_process['measurement_of_cartoon_ply'];
							    $measurement_quantity = $row_upcoming_process['carton_quantity'];

							    //echo $upcoming_process_id;
							    //echo $process_name;

									    if ($upcoming_process_id == $process_name) 
									    {
							    	
										 ?>

											 <tr>
												<td><?php echo $s1; ?></td>
												<td><?php echo $travel_card_id; ?></td>
												<td><?php echo $po_number; ?></td>
												<td><?php echo $customer_name; ?></td>
												<td><?php echo $buyer_name; ?></td>
												<td><?php echo $order_type; ?></td>
												<td><?php echo $length; ?></td>
												<td><?php echo $width; ?></td>
												<td><?php echo $height; ?></td>
												<td><?php echo $ply; ?></td>
												<td><?php echo $measurement_quantity; ?></td>
												<td><?php echo $running_process_quantity; ?></td>
												<td><?php echo ( (int)$measurement_quantity - (int)$running_process_quantity);?></td>

												<td><?php echo $upcoming_process_name; ?></td>
												
									 		 </tr>
										  <?php

								    	}
													  
										$s1++;
									}
								?> 
					  </tbody>
					 </table>
		
 
        </div> <!-- End of <div class="form-group form-group-sm" -->
        
         

      </div>  <!-- End of <div class="panel panel-default"> -->
    </div>  <!-- End of <div id="for_all_page_load"> -->
</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->
</div>	





