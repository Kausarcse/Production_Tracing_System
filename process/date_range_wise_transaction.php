<?php
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
		<!-- <div class="panel panel-default">  This div will create a block/panel for FORM

				<div class="panel-heading" style="color:#191970;"><b>Date Range Wise Transaction</b></div>  This will create a upper block for FORM (Just Beautification) 

		</div> End of <div class="panel panel-default"> -->


		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

				<div id="element">
				<div class="form-group form-group-sm" id="div_machine_wise_production_summary_for_folding">
					<form class="form-horizontal" action="" method="POST" name="date_range_wise_summary" id="date_range_wise_summary">

						<table class="table table-bordered">
							<thead>
								<tr>
									<td style="text-align: center; font-size: 25px; color: black; font-weight: bold; border: 1px solid">
										Date Range Wise Produciton Summary
									</td>
									
								</tr>
							</thead>
						</table>

						<div class="form-group form-group-sm" id="form-group_for_feom_date" style="margin-right:0px; color:#00008B;">
									<label class="control-label col-sm-3" for="from_date"> Date :</label>
									<div class="col-sm-4" style="padding-right: 0">

									<input type="text" class="form-control" id="from_date" name="from_date"> 
								

									</div>


									<div class="col-sm-3" style="padding-right: 0">


									<input type="text" id="to_date" class="form-control" name="to_date">


								</div>

									<div class="col-sm-1" style="padding-left: 0">
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
						</div>

						

		



							<script>
								$( function() {
									//$( "#from_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
									$( "#from_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
									
								} );

								$( function() {
									$( "#to_date" ).datepicker({ dateFormat: 'dd-mm-yy' });


								} );
								</script>


						

							<div class="col-sm-12" style="padding-top: 8px;">
								<button name="submit" type="button" class="btn btn-info" onclick="date_range_wise_summary_details()">Filter</button> 

								<br/>

								<br/>
							</div>


						
						

				
					</form>
					<table class="table">
							<thead>
								<tr>
									<td style="text-align: center; font-size: 15px; color: red; font-weight: bold; padding: 0;">
									<!-- ** All Quantity is in cm. ** -->  <button id="excel_button" class="btn btn-success" style="display: none;"><a id="downloadLink" onclick="exportF(this)" style="color: white;">Export to excel</a></button>
									</td>
									
								</tr>
							</thead>
						</table>
					<!-- <label for="" style="text-align: center;" style="border: brown;">** All Quantity is in meter. **  </label> -->
				</div>  <!-- <div class="form-group form-group-sm" id="div_machine_wise_production_summary_for_folding"> -->
			
			</div>

		</div> <!-- End of <div class="panel panel-default"> -->
        




<div id="date_range_wise_transaction">

   <div class="panel panel-default" id="table_load">


		<?php 


			$user_name = $_SESSION['user_name'];

			$sql_for_process_name = "SELECT DISTINCT user_access FROM user_login WHERE user_name = '$user_name'";

				$res_for_process_name = mysqli_query($con, $sql_for_process_name);

				$row2 = mysqli_fetch_assoc($res_for_process_name);
				$process_name = $row2['user_access'];


			if($user_name == 'rejowan' || $user_name == 'mijan')
			{
				?>
						<table id="datatable-buttons" class="table table-striped table-bordered" >
							<thead >
								 <tr>
								 	<th style="text-align: center;">SI</th>
									<th style="text-align: center;">Travel NO</th>
									<th style="text-align: center;">Production Date</th>
									<th style="text-align: center;">Delivery Date</th>
									<th style="text-align: center;">PO Number</th>
									<th style="text-align: center;">Customer Name</th>
									<th style="text-align: center;">Buyer Name</th>
									<th style="text-align: center;">PO Quantity</th>
									<th style="text-align: center;">Length</th>
									<th style="text-align: center;">Width</th>
									<th style="text-align: center;">Height</th>
									<th style="text-align: center;">Ply</th>
									<th style="text-align: center;">Actual Used Linear</th>
									<th style="text-align: center;">Actual Used Medium</th>
									<th style="text-align: center;">Process Quantity</th>
									
								 </tr>
							</thead>
							<tbody>
							<?php 
											$today_date = date("d-m-Y");
											$s1 = 1;
											$sql_for_color = "SELECT DISTINCT
											tcdft.travel_card_creation_date,
											tcdft.travel_card_id,
											tcdft.process_name,
											tcdft.process_quantity,
											tcdft.actual_used_linear,
										    tcdft.actual_used_medium, 
											(tcdft.process_quantity - pd.carton_quantity) as balance_quantity,
						 
											pc.product_delivery_date,
											pc.customer_name,
											pc.buyer_name,
											pc.po_number,
											pc.po_quantity,

											pd.measurement_of_carton_length,
											pd.measurement_of_carton_width,
											pd.measurement_of_cartoon_height,
											pd.measurement_of_cartoon_ply,
											pd.carton_quantity
											
										 FROM person_wise_transactions tcdft 
										 LEFT JOIN po_creation pc ON tcdft.po_id = pc.po_id 
										 LEFT JOIN po_details pd ON tcdft.po_details_id = pd.po_details_id
										 WHERE tcdft.process_id = 'proc_1'
										--  AND tcdft.recording_person_name = '$user_name'
										";

											$res_for_color = mysqli_query($con, $sql_for_color);

											while ($row = mysqli_fetch_assoc($res_for_color)) 
											{
							 ?>

							 <tr>
								<td><?php echo $s1; ?></td>
								<td><?php echo $row['travel_card_id']; ?></td>
								<td><?php echo $row['travel_card_creation_date']; ?></td>
								<td><?php echo $row['product_delivery_date'] ?></td>
								<td><?php echo $row['po_number'];?></td>
								<td><?php echo $row['customer_name']; ?></td>
								<td><?php echo $row['buyer_name']; ?></td>
								<td><?php echo $row['po_quantity']; ?></td>
								<td><?php echo $row['measurement_of_carton_length']; ?></td>
								<td><?php echo $row['measurement_of_carton_width']; ?></td>
								<td><?php echo $row['measurement_of_cartoon_height']; ?></td>
								<td><?php echo $row['measurement_of_cartoon_ply']; ?></td>
								<td><?php echo $row['actual_used_linear']; ?></td>
								<td><?php echo $row['actual_used_medium']; ?></td>
								<td><?php echo $row['process_quantity']; ?></td>
								
								<td><?php

								// if($row['balance_quantity']==0)
								// {
								// 	echo $row['balance_quantity'];
								// }
								// else{
								// 	echo '- '.$row['balance_quantity']; 

								// }
								 
								 
								 ?></td>
								
								<?php
											  
								$s1++;
												 }
								 ?> 
							 </tr>
						  </tbody>
					 </table>
				
				<?php
			}
			else
			{
				?>
				
					<table id="datatable-buttons" class="table table-striped table-bordered" >
						<thead >
							 <tr>
							 <th style="text-align: center;">SI</th>
							 <th style="text-align: center;">Travel NO</th>
							 <th style="text-align: center;">Production Date</th>
							 <th style="text-align: center;">Delivery Date</th>
							 <th style="text-align: center;">PO Number</th>
							 <th style="text-align: center;">Customer Name</th>
							 <th style="text-align: center;">Buyer Name</th>
							 <th style="text-align: center;">PO Quantity</th>
							 <th style="text-align: center;">Length</th>
							 <th style="text-align: center;">Width</th>
							 <th style="text-align: center;">Height</th>
							 <th style="text-align: center;">Ply</th>
							 <th style="text-align: center;">Process Quantity</th>
							 <th style="text-align: center;">Measurement Quantity</th>
							 <!-- <th style="text-align: center;">Balance Quantity</th>
 -->							 </tr>
						</thead>
						<tbody>
						<?php 
										// $today_date = date("d-m-Y");
										$s1 = 1;
										$sql_for_color = "SELECT DISTINCT 
										                       tcdft.travel_card_creation_date,
															   tcdft.travel_card_id,
															   tcdft.process_name,
															   tcdft.process_quantity,
															   (tcdft.process_quantity - pd.carton_quantity) as balance_quantity,
											
											                   pc.product_delivery_date,
											                   pc.customer_name,
															   pc.buyer_name,
															   pc.po_number,
															   pc.po_quantity,

											                   pd.measurement_of_carton_length,
															   pd.measurement_of_carton_width,
															   pd.measurement_of_cartoon_height,
															   pd.measurement_of_cartoon_ply,
															   pd.carton_quantity
															   
											
							
															From person_wise_transactions tcdft 
															LEFT JOIN po_creation pc ON tcdft.po_id = pc.po_id 
															LEFT JOIN po_details pd ON tcdft.po_details_id = pd.po_details_id
															WHERE tcdft.process_id = '$process_name'
															AND tcdft.recording_person_name = '$user_name'"; 
															//WHERE tcdft.travel_card_creation_date 
															//BETWEEN '01-11-2021' and '07-10-2021' ";

										$res_for_color = mysqli_query($con, $sql_for_color);

									  

										while ($row = mysqli_fetch_assoc($res_for_color)) 
										{

											

										
						 ?>

						 <tr>
							<td><?php echo $s1; ?></td>
							<td><?php echo $row['travel_card_id']; ?></td>
							<td><?php echo $row['travel_card_creation_date']; ?></td>
							<td><?php echo $row['product_delivery_date'] ?></td>
							<td><?php echo $row['po_number']; ?></td>
							<td><?php echo $row['customer_name']; ?></td>
							<td><?php echo $row['buyer_name']; ?></td>
							<td><?php echo $row['po_quantity']; ?></td>
							<td><?php echo $row['measurement_of_carton_length']; ?></td>
							<td><?php echo $row['measurement_of_carton_width']; ?></td>
							<td><?php echo $row['measurement_of_cartoon_height']; ?></td>
							<td><?php echo $row['measurement_of_cartoon_ply']; ?></td>
							<td><?php echo $row['carton_quantity']; ?></td>
							<td><?php echo $row['process_quantity'];?></td>
							
							<!-- <td>
								<?php

								if($row['balance_quantity']==0)
								{
									echo $row['balance_quantity'];
								}
								else{
									echo $row['balance_quantity']; 

								}
								 
								 
								?>
							</td> -->
							
							<?php
										  
							$s1++;
											 }
							 ?> 
						 </tr>
					  </tbody>
					 </table>
				
				<?php
			}
		?>
		
 
        </div> <!-- End of <div class="form-group form-group-sm" -->
        
         

      </div>  <!-- End of <div class="panel panel-default"> -->
    </div>  <!-- End of <div id="for_all_page_load"> -->
</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->
</div>	





