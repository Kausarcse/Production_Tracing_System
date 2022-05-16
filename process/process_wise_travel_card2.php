<?php
error_reporting(0);
session_start();

include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();
 $user_access =$_SESSION['user_access'];
 $user_name=$_SESSION['user_name'];



?>
<script type='text/javascript' src='process/process_wise_travel_card_form_validation_for_after_process.js'></script>
<script type='text/javascript' src='process/process_wise_travel_card_form_validation_for_before_after_process.js'></script>

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

function Reset_Checkbox(checkbox_element)
{
		for(var i=0;i<checkbox_element.length;i++)
		{

				checkbox_element[i].checked = false;

		}
}
</script>

<script>

function travel_card_id_change(travel_card_id)
{   var travel_card_id=travel_card_id;
	$.ajax({
	 		url: 'process/returning_travel_card_details.php',
	 		dataType: 'text',
	 		type: 'post',
	 		contentType: 'application/x-www-form-urlencoded',
	 		data: {travel_card_id: travel_card_id},
	 		      
	 		success: function( data, textStatus, jQxhr )
	 		{     
	 			//alert(data);  
	 				
 				var splitted_data_for_po = data.split('?fs?');

 				document.getElementById('customer_id').value=splitted_data_for_po[0];			 				
 				document.getElementById('customer_name').value=splitted_data_for_po[1];			 				
 				document.getElementById('buyer_id').value=splitted_data_for_po[2];			 				
 				document.getElementById('buyer_name').value=splitted_data_for_po[3];			 				
 				document.getElementById('po_quantity').value=splitted_data_for_po[4];			 				
 				document.getElementById('product_delivery_date').value=splitted_data_for_po[5];			 				
 				document.getElementById('responsible_person').value=splitted_data_for_po[6];			 				
 				document.getElementById('product_category').value=splitted_data_for_po[7];			 				
 				document.getElementById('order_type').value=splitted_data_for_po[8];

 				
 				document.getElementById('product_delivery_date').value=splitted_data_for_po[9];
 				document.getElementById('po_order_received_date').value=splitted_data_for_po[10];	


 				document.getElementById('measurement_of_carton_length').value=splitted_data_for_po[11];	
 				document.getElementById('measurement_of_carton_width').value=splitted_data_for_po[12];	
 				document.getElementById('measurement_of_cartoon_height').value=splitted_data_for_po[13];	
 				document.getElementById('measurement_of_cartoon_ply').innerHTML=splitted_data_for_po[14];	
 				document.getElementById('paper_type_linear').value=splitted_data_for_po[15];


 				document.getElementById('paper_type_medium').value=splitted_data_for_po[16];
 				document.getElementById('paper_type_medium_1').value=splitted_data_for_po[38];
 				document.getElementById('paper_type_medium_2').value=splitted_data_for_po[39];


 				document.getElementById('paper_type_linear_1').value=splitted_data_for_po[17];

 				document.getElementById('flute_type').innerHTML=splitted_data_for_po[18];

 				// var flute_type = splitted_data_for_po[18];
 				// var res = flute_type.split(",");
 				// for (var i = 0; i <= res.length; i++) 
 				// {
 				// 	alert(res[i]);
 				// 	document.getElementById(res[i]).checked = true;
 				// 	//document.querySelector('.messageCheckbox:checked').checked = true;
 				// }

 				document.getElementById('flute_type').value=splitted_data_for_po[18];

 				document.getElementById('printing_status').innerHTML=splitted_data_for_po[19];	
 				document.getElementById('dye_cutting').innerHTML=splitted_data_for_po[20];	
 				document.getElementById('carton_quantity').value=splitted_data_for_po[21];	
 				document.getElementById('ratio').value=splitted_data_for_po[22];	
 				document.getElementById('actual_ratio').value=splitted_data_for_po[22];	
 				document.getElementById('board_quantity').value=splitted_data_for_po[23];	
 				document.getElementById('roll_size').value=splitted_data_for_po[24];	
 				document.getElementById('actual_roll_size').value=splitted_data_for_po[24];	

 				document.getElementById('score_or_creez_size').value=splitted_data_for_po[25];	
 				document.getElementById('score_or_creez_size_1').value=splitted_data_for_po[40];	
		 		document.getElementById('score_or_creez_size_2').value=splitted_data_for_po[41];
		 		

 				document.getElementById('slotting_size').value=splitted_data_for_po[26];
 				document.getElementById('slotting_size_1').value=splitted_data_for_po[42];
 				document.getElementById('slotting_size_2').value=splitted_data_for_po[43];
 				document.getElementById('slotting_size_3').value=splitted_data_for_po[44];

 				document.getElementById('cutting_ratio').value=splitted_data_for_po[45];


 				document.getElementById('layout').innerHTML=splitted_data_for_po[27];	
 				document.getElementById('cutter_size').value=splitted_data_for_po[28];	
 				document.getElementById('po_details_id').value=splitted_data_for_po[29];
 				


 				//combine_data
 				var po_details_id = splitted_data_for_po[29];
 				var po_number = splitted_data_for_po[30];
 				document.getElementById('po_number').value=po_number;
 				
 				


 				document.getElementById('po_details').value='Height: '+splitted_data_for_po[11]+', Width: '+splitted_data_for_po[11]+', Length: '+splitted_data_for_po[13]+', Ply: '+splitted_data_for_po[14];



 				//document.getElementById('travel_card_creation_date').value=splitted_data_for_po[32];

 				var po_id = splitted_data_for_po[31];
 				document.getElementById('po_id').value=po_id;

 				//document.getElementById('required_time').value=splitted_data_for_po[33];
 				document.getElementById('liner_consumption_calc').value=splitted_data_for_po[34];
 				document.getElementById('media_consumption_calc').value=splitted_data_for_po[35];
 				document.getElementById('sqm_consumption_calc').value=splitted_data_for_po[36];
 				document.getElementById('total_consumption').value=splitted_data_for_po[37];
 				document.getElementById('actual_used_linear').value=splitted_data_for_po[46];
 				document.getElementById('actual_used_medium').value=splitted_data_for_po[47];

 				//alert(splitted_data_for_po[46]);
 				//alert(splitted_data_for_po[47]);


 				var po_details_id = splitted_data_for_po[29];
 				/*alert(po_details_id);*/

 			/*	po_number = po_number + '?fs?' + po_id;*/

 				 $.ajax({
			 		url: 'process/returning_process_name.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: {po_id: po_id,po_details_id: po_details_id},
			 		      
			 		success: function( data, textStatus, jQxhr )
			 		{       
			 			    
                        document.getElementById("process_name").innerHTML=data;
						var process_id=document.getElementById('user_access').value;

						  $.ajax({
							 		url: 'process/returning_before_quantity_for_travel_card.php',
							 		dataType: 'text',
							 		type: 'post',
							 		contentType: 'application/x-www-form-urlencoded',
							 		data: {process_id: process_id,travel_card_id: travel_card_id},
							 		success: function( data, textStatus, jQxhr )
							 		{       
						                     
						                     //alert(data);
							 				 document.getElementById("before_process_quantity").value=data;
							 				
							 		},
							 		error: function( jqXhr, textStatus, errorThrown )
							 		{
							 				//console.log( errorThrown );
							 				alert(errorThrown);
							 		}
							 }); // End of $.ajax({	
							
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{       
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			}); // End of $.ajax({		  				
				 				
	
			//document.getElementById('test').innerHTML=data;		
					
	 		},
	 		error: function( jqXhr, textStatus, errorThrown )
	 		{       
	 				//console.log( errorThrown );
	 				alert(errorThrown);
	 		}
	}); // End of $.ajax({
}




 function sending_data_for_delete(po_id)
 {
      
       var url_encoded_form_data = 'po_id='+po_id;
       
		  	 $.ajax({
			 		url: 'process/po_creation_deleting.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);

			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({



 }//End of function sending_data_of_color_form_for_delete_from_database()


 /******************************************For Auto Complete*****************************************/

 $(".for_auto_complete").chosen()/**/

 /******************************************For Auto Complete*****************************************/

 function po_number_change()
 {
 	 var po_number = document.getElementById("po_number").value;
 	 $.ajax({
	 		url: 'process/pp_details_info.php',
	 		dataType: 'text',
	 		type: 'post',
	 		contentType: 'application/x-www-form-urlencoded',
	 		data: {po_number: po_number},
	 		success: function( data, textStatus, jQxhr )
	 		{      /*document.getElementById("form-group_for_po_number").innerHTML=data;*/
	 				//alert(data);
	 				document.getElementById("po_details_info").innerHTML=data;
	 				$('.for_auto_complete').chosen();
	 		},
	 		error: function( jqXhr, textStatus, errorThrown )
	 		{
	 				//console.log( errorThrown );
	 				alert(errorThrown);
	 		}
	 }); // End of $.ajax({	
 }

function returning_before_quantity_for_travel_card(process_name)
{
  var process_name=process_name.split('?fs?');

  var process_id=process_name[1];

  var travel_card_id=document.getElementById('travel_card_id').value;

  $.ajax({
	 		url: 'process/returning_before_quantity_for_travel_card.php',
	 		dataType: 'text',
	 		type: 'post',
	 		contentType: 'application/x-www-form-urlencoded',
	 		data: {process_id: process_id,travel_card_id: travel_card_id},
	 		success: function( data, textStatus, jQxhr )
	 		{       
                     
                     //alert(data);
				     var newdata = data.split("?fs?");
				     var current_process_id = newdata[1];
	 				 document.getElementById("before_process_quantity").value=newdata[0];

	 				 var process_name=document.getElementById('process_name').value;


					var split_data_of_process_name=process_name.split('?fs?');;
					

					  var process_id=split_data_of_process_name[1];

					  var travel_card_id=document.getElementById('travel_card_id').value;


		                $.ajax({
					 		url: 'process/returning_before_process_name_for_travel_card.php',
					 		dataType: 'text',
					 		type: 'post',
					 		contentType: 'application/x-www-form-urlencoded',
					 		data: {process_id: process_id,travel_card_id: travel_card_id},
					 		success: function( data_amount, textStatus, jQxhr )
					 		{       
				                  document.getElementById("before_process_name").value = data_amount;


				                  //find out new process quantity that given previously

				                  $.ajax({
								 		url: 'process/returning_current_process_quantity_for_travel_card.php',
								 		dataType: 'text',
								 		type: 'post',
								 		contentType: 'application/x-www-form-urlencoded',
								 		data: {process_id: current_process_id,travel_card_id: travel_card_id},
								 		success: function( new_amount, textStatus, jQxhr )
								 		{       
							                  document.getElementById("process_quantity").value = new_amount;
								 				
								 		},
								 		error: function( jqXhr, textStatus, errorThrown )
								 		{
								 				//console.log( errorThrown );
								 				alert(errorThrown);
								 		}
								 }); // End of $.ajax({   
                                   

					 				
					 		},
					 		error: function( jqXhr, textStatus, errorThrown )
					 		{
					 				//console.log( errorThrown );
					 				alert(errorThrown);
					 		}
					 }); // End of $.ajax({
	 				
	 		},
	 		error: function( jqXhr, textStatus, errorThrown )
	 		{
	 				//console.log( errorThrown );
	 				alert(errorThrown);
	 		}
	 }); // End of $.ajax({	
}


function change_acutal_roll_size(ratio)
{  
	 var score_or_creez_size=document.getElementById("score_or_creez_size").value;
     var score_or_creez_size_1=document.getElementById("score_or_creez_size_1").value;
     var score_or_creez_size_2=document.getElementById("score_or_creez_size").value;

	var roll_size=((parseInt(score_or_creez_size)+parseInt(score_or_creez_size_1)+parseInt(score_or_creez_size_2))*parseInt(ratio))/25.4;

    document.getElementById("actual_roll_size").value=roll_size;
}




 function sending_data_of_travel_card_creation_form_for_saving_in_database()
 { 

 	var process_quantity = document.getElementById('process_quantity').value;
 	var carton_quantity = document.getElementById('carton_quantity').value;
 	var before_process_quantity = document.getElementById('before_process_quantity').value;

 	if (process_quantity > carton_quantity) 
 	{
 		alert("Process quantity bigger than measurement quantity");
 		return false;
 	}

 	else if (process_quantity > before_process_quantity) 
 	{
 		alert("Process quantity bigger than before process quantity");
 		return false;
 	}

 	else
 	{
 		   var confirmation = confirm("Do you want to Submit!!!");
		   if(confirmation == true)
		   {

		   	   var process_name=document.getElementById('process_name').value;
		       var splitted_process_name=process_name.split("?fs?");
		       var process_id= splitted_process_name[1];

		       //for corrugation
		       if(process_id=="proc_1")
		       {
		            
		           var validate = Process_Wise_TRAVEL_CARD_Form_Validation_FOR_AFTER();
			       var url_encoded_form_data = $("#travel_card_creation_form").serialize(); //This will read all control elements value of the form	
			       if(validate != false)
				   {


					  	 $.ajax({
						 		url: 'process/process_wise_travel_card_info_saving.php',
						 		dataType: 'text',
						 		type: 'post',
						 		contentType: 'application/x-www-form-urlencoded',
						 		data: url_encoded_form_data,
						 		success: function( data, textStatus, jQxhr )
						 		{
						 				alert(data);
						 		},
						 		error: function( jqXhr, textStatus, errorThrown )
						 		{
						 				//console.log( errorThrown );
						 				alert(errorThrown);
						 		}
						 }); // End of $.ajax({

			        }//End of if(validate != false)
		       }
		       
		       else
		       {

		           var validate = Process_Wise_TRAVEL_CARD_Form_Validation_FOR_BEFORE_AFTER();
		          
			       var url_encoded_form_data = $("#travel_card_creation_form").serialize(); //This will read all control elements value of the form	
			       if(validate != false)
				   {


					  	 $.ajax({
						 		url: 'process/process_wise_travel_card_info_saving.php',
						 		dataType: 'text',
						 		type: 'post',
						 		contentType: 'application/x-www-form-urlencoded',
						 		data: url_encoded_form_data,
						 		success: function( data, textStatus, jQxhr )
						 		{
						 				alert(data);
						 			// 	Swal.fire(
										//   'Good job!',
										//   data,
										//   'success'
										// )
								},
						 		error: function( jqXhr, textStatus, errorThrown )
						 		{
						 				//console.log( errorThrown );
						 				alert(errorThrown);
						 		}
						 }); // End of $.ajax({

			        }//End of if(validate != false)
		       }
		   	   
		   } //end of if
		   else
		   { 
		     	
		   }
 	}


 }//End of function sending_data_of_travel_card_creation_form_for_saving_in_database()




</script>
<div class="col-sm-12 col-md-12 col-lg-12">

		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

				<div class="panel-heading" style="color:#191970;"><b>Travel Card Info</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

				<nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item active" aria-current="page">Home</li>
					     <li class="breadcrumb-item"><a onclick="load_page('process/process_wise_travel_card.php')">Add Travel Card Info</a></li>
					  </ol>
				 </nav>

				<form class="form-horizontal" action="" style="margin-top:10px;" name="travel_card_creation_form" id="travel_card_creation_form">
                    
                    <div class="panel-heading" style="color:#191970;"><b>Order Description</b></div>


                    


					 <div class="form-group form-group-sm" id="form-group_for_travel_card_id">
								<label class="control-label col-sm-3" for="travel_card_id" style="color:#00008B;">Travel Card No:</label>
								<div class="col-sm-5">

									<select  class="form-control for_auto_complete" id="travel_card_id" name="travel_card_id" onchange="travel_card_id_change(this.value)"> 
													<option select="selected" value="select">Select Travel Card</option>
													<?php 
														 $sql = 'select * from `travel_card_details` ';
														 $result= mysqli_query($con,$sql) or die(mysqli_error());
														 while( $row = mysqli_fetch_array( $result))
														 {

															 echo '<option value="'.$row['travel_card_id'].'">'.$row['travel_card_id'].'</option>';

														 }

													 ?>
									</select>

									
									
								</div>
								
					</div>  <!--  end of <div class="form-group form-group-sm" id="form-group_for_travel_card_id"> -->

                    <div class="form-group form-group-sm" id="form-group_for_to_date" style="margin-right:0px; color:#00008B;">
                           
							<div class="col-sm-5" style="padding-right: 0">
								 <input type="hidden" id="travel_card_creation_date" class="form-control" name="travel_card_creation_date" >

							</div>

						
                    </div>

						  <script>
							  $( function() {
							    //$( "#from_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
							    $( "#travel_card_creation_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
							    
							  } );

							 
						   </script>


						<div class="form-group form-group-sm" id="form-group_for_po_number">
								<label class="control-label col-sm-3" for="po_number" style="color:#00008B;">PO No:</label>
								<div class="col-sm-5">
<!-- 
									<select  class="form-control" id="po_number" name="po_number" onchange="po_number_change()"> 
													<option select="selected" value="select">Select PO</option>
													<?php 
														 $sql = 'select * from `po_creation` order by `customer_name`';
														 $result= mysqli_query($con,$sql) or die(mysqli_error());
														 while( $row = mysqli_fetch_array( $result))
														 {

															 echo '<option value="'.$row['po_number'].'?fs?'.$row['po_id'].'">'.$row['po_number'].'</option>';

														 }

													 ?>
									</select> -->

									<input type="text" class="form-control" id="po_number" name="po_number" value="" readonly>
									<input type="hidden" class="form-control" id="po_id" name="po_id" value="" readonly>
									<input type="hidden" class="form-control" id="before_process_name" name="before_process_name" value="" readonly>

									
									
								</div>
								
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->


						<div id="po_details_info">
							<div class="form-group form-group-sm" id="form-group_for_po_number">

								<label><span id="show"></span></label>
	                                
								  
									<label class="control-label col-sm-3" for="po_details" style="color:#00008B;">PO Details:</label>
									<div class="col-sm-5">
										<!-- <select  class="form-control" id="po_details" name="po_details" onchange="get_po_details(this.value)">
												<option >PO Details</option>
												<?php 
													 $sql = 'select * from `po_details` order by `row_id`';
													 $result= mysqli_query($con,$sql) or die(mysqli_error());
													 while( $row = mysqli_fetch_array( $result))
													 {

														 echo '<option value="'.$row['po_details_id'].'">Height: '.$row['measurement_of_cartoon_height'].', Width: '.$row['measurement_of_carton_width'].', Length: '.$row['measurement_of_carton_length'].', Ply: '.$row['measurement_of_cartoon_ply'].'</option>';

													 }

												 ?>
										</select> -->

										<input type="text" class="form-control" id="po_details" name="po_details" value="" readonly>

									
									</div>
							</div>
						</div>


						<input type="hidden" class="form-control" name="po_details_id" id="po_details_id">


					   <div class="form-group form-group-sm" id="form-group_for_customer_name">
								<label class="control-label col-sm-3" for="customer_name" style="margin-right:0px; color:#00008B;">Customer Name:<span style="color:red"> *</span></label>

									<div class="col-sm-5">
										

										<input type="text" class="form-control" id="customer_name" name="customer_name" value="" readonly>
										<input type="hidden" class="form-control" id="customer_id" name="customer_id" value="" readonly>
									</div>
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_customer_name"> -->





						<div class="form-group form-group-sm" id="form-group_for_buyer_name">
			                <label class="control-label col-sm-3" for="buyer_name" style="margin-right:0px; color:#00008B;">Buyer Name:<span style="color:red"> *</span></label>
			                
			                  <div class="col-sm-5">
			                    <input type="text" class="form-control" id="buyer_name" name="buyer_name" value="" readonly>
			                    <input type="hidden" class="form-control" id="buyer_id" name="buyer_id" value="" readonly>
			                  </div>
			            </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_buyer_name"> -->



			            <div class="form-group form-group-sm" id="form-group_for_to_date" style="margin-right:0px; color:#00008B;">
                            <label class="control-label col-sm-3 " for="po_order_received_date">Order Received Date :</label>
							<div class="col-sm-5" style="padding-right: 0">
								 <input type="text" id="po_order_received_date" class="form-control" name="po_order_received_date" value="">

								
							</div>

							<div class="col-sm-1" style="padding-left: 0px">
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
							
                        </div>

                        <script>
							  $( function() {
							    //$( "#from_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
							    $( "#po_order_received_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
							    
							  } );

							 
						   </script>


                        <div class="form-group form-group-sm" id="form-group_for_to_date" style="margin-right:0px; color:#00008B;">
                            <label class="control-label col-sm-3 " for="product_delivery_date">Delivery Date Date :</label>
							<div class="col-sm-5" style="padding-right: 0">
								 <input type="text" id="product_delivery_date" class="form-control" name="product_delivery_date" value="">

								
							</div>

							<div class="col-sm-1" style="padding-left: 0px">
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
							
                        </div>

                        <script>
							  $( function() {
							    //$( "#from_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
							    $( "#product_delivery_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
							    
							  } );

							 
						   </script>

						<div class="form-group form-group-sm" id="form-group_for_responsible_person">
								<label class="control-label col-sm-3" for="responsible_person" style="color:#00008B;">Responsible Person:</label>
								<div class="col-sm-5">
                                    <input type="text" id="responsible_person" class="form-control" name="responsible_person" readonly>
									

									
									
								</div>
								
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->

			            <div class="form-group form-group-sm" id="form-group_for_po_quantity">
			                <label class="control-label col-sm-3" for="po_quantity" style="color:#00008B;">Quantity:</label>
			                <div class="col-sm-5">
			                  <input type="text" class="form-control" id="po_quantity" name="po_quantity" value="" readonly>
			                  
			                </div>
			              
			            </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->




			            <div class="form-group form-group-sm" id="form-group_for_product_category">
			                <label class="control-label col-sm-3" for="product_category" style="color:#00008B;">Product Category:</label>
			                <div class="col-sm-5">
			                  <input type="text" class="form-control" id="product_category" name="product_category" value="" readonly>
			                  
			                </div>
			                
			            </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->



			            <div class="form-group form-group-sm" id="form-group_for_order_type">
			                <label class="control-label col-sm-3" for="order_type" style="color:#00008B;">Order Type:</label>
			                <div class="col-sm-5">
			                  <input type="text" class="form-control" id="order_type" name="order_type" value="" readonly>
			                  
			                </div>
			               
			            </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->










                    

				       <div><label class="form-control">Product Description</label> </div>

                       <div class="form-group form-group-sm">
		     
									    <!-- <div class="col-sm-1 text-center">
											
										</div> -->


										<div class="col-sm-3 text-center">
											<label for="test_name_and_method" style="font-size:12px; color:#008000;"></label>
											
									          
										</div>
									 
										 <div class="col-sm-1 text-center">
								              <label for="description_or_type" style="font-size:12px; color:#008000;">Length</label>
								              
								         </div>

							           <div class="col-sm-1 text-center">
								            <label for="value" style="font-size:12px; color:#008000;">Width</label>
								       </div>
								         
								        <div class="col-sm-1 text-center">
								              <label for="value" style="font-size:12px; color:#008000;">Height</label>
								              
								        </div>
							          
							               <!--Add Input/Select Field Here No Dive Only Input/Select/Radio Button/Checkbox/Textarea -->
								         
									   <div class="col-sm-1 text-center">
									         <label for="math_op_value" style="font-size:12px; color:#008000;">Ply</label>
									            
									   </div>
								            
								               
								        

					     </div><!-- End of <div class="form-group form-group-sm"  -->


					<div id="div_measurement_of_carton" >


						<div class="form-group form-group-sm" >
				      

					      <div class="col-sm-3 text-center">
					         <label class="control-label"  style="color:#00008B;"><span id="for_measurement_of_carton">Measurement of Carton (cm)</span> </label>
					      </div>
					       
					       <div class="col-sm-1 text-center">
					               
					                <input class="form-control input-sm" type="text" id="measurement_of_carton_length" name="measurement_of_carton_length" readonly>

					           </div>

					       

					           <div class="col-sm-1 text-center">
					                <input class="form-control input-sm" type="text" id="measurement_of_carton_width" name="measurement_of_carton_width" readonly>
					             
					         </div>
					            
					             
					          <div class="col-sm-1 text-center">
					               <input class="form-control input-sm" type="text" id="measurement_of_cartoon_height" name="measurement_of_cartoon_height" readonly>
					              
					           </div>
					            
					                 <!--Add Input/Select Field Here No Dive Only Input/Select/Radio Button/Checkbox/Textarea -->
					              
					          <div class="col-sm-1" for="measurement_of_cartoon_ply">

					          	<div id="measurement_of_cartoon_ply"></div>

						          	<!-- <select  class="form-control" id="measurement_of_cartoon_ply" name="measurement_of_cartoon_ply">
												<option select="selected" value="select">Select No of Ply</option>
												<option value="3">3</option>
												<option value="5">5</option>
												<option value="7">7</option>
									</select> -->

					            
					          </div>

					         
				                
				       
				       </div><!-- End of <div class="form-group form-group-sm" measurement_of_carton-->

				    </div> <!--  End of <div id="div_measurement_of_carton" style="display: none">  -->



				   <div class="form-group form-group-sm">
		     
									    <!-- <div class="col-sm-1 text-center">
											
										</div> -->


										<div class="col-sm-3 text-center">
											<label for="test_name_and_method" style="font-size:12px; color:#008000;"></label>
											
									          
										</div>
									 
										 <div class="col-sm-1 text-center">
								              <label for="papaer_type_linear" style="font-size:12px; color:#008000;">Linear</label>
								              
								         </div>

							           <div class="col-sm-1 text-center">
								            <label for="paper_type_medium" style="font-size:12px; color:#008000;">Meidum</label>
								       </div>


								       <div class="col-sm-1 text-center">
								            <label for="paper_type_medium" style="font-size:12px; color:#008000;">Meidum 2</label>
								       </div>

								       <div class="col-sm-1 text-center">
								            <label for="paper_type_medium" style="font-size:12px; color:#008000;">Meidum 3</label>
								       </div>
								         
								        <div class="col-sm-1 text-center">
								              <label for="papeer_type_linear_1" style="font-size:12px; color:#008000;">Linear 1</label>
								              
								        </div>
							          
							               <!--Add Input/Select Field Here No Dive Only Input/Select/Radio Button/Checkbox/Textarea -->
								         
									  
								            
								               
								        

			     </div><!-- End of <div class="form-group form-group-sm"  -->



			     <div id="div_paper_type" >


						<div class="form-group form-group-sm" >
				      

					       <div class="col-sm-3 text-center">
					         <label class="control-label"  style="color:#00008B;"><span id="for_paper_type">Paper Type</span> </label>
					       </div>
					       
					       <div class="col-sm-1 text-center">
					               
					                <input class="form-control input-sm" type="text" id="paper_type_linear" name="paper_type_linear" readonly>

					           </div>

					       

					       <div class="col-sm-1 text-center">
					                <input class="form-control input-sm" type="text" id="paper_type_medium" name="paper_type_medium" readonly>
					             
					       </div>

					       <div class="col-sm-1 text-center">
					                <input class="form-control input-sm" type="text" id="paper_type_medium_1" name="paper_type_medium_1" readonly>
					             
					       </div>

					       <div class="col-sm-1 text-center">
					                <input class="form-control input-sm" type="text" id="paper_type_medium_2" name="paper_type_medium_2" readonly>
					             
					       </div>
					            
					             
					       <div class="col-sm-1 text-center">
					               <input class="form-control input-sm" type="text" id="paper_type_linear_1" name="paper_type_linear_1" readonly>
					              
					       </div>
					            
					               
				       
				       </div><!-- End of <div class="form-group form-group-sm" paper_type-->

				 </div> <!--  End of <div id="div_paper_type" style="display: none">  -->





						<div id="div_flute_type" >


								<div class="form-group form-group-sm" >
						      

							      <div class="col-sm-3 text-center">
							         <label class="control-label"  style="color:#00008B;"><span id="for_flute_type">Flute Type</span> </label>
							      </div>


							      <div class="col-sm-9 text-left" id="flute_type">
							      	 
							      </div>
							       
							        
						       
						       </div><!-- End of <div class="form-group form-group-sm" flute_type-->

						    </div> <!--  End of <div id="div_flute_type" style="display: none">  -->




					     <div id="div_printing_status" >


							<div class="form-group form-group-sm" >
					      

						      <div class="col-sm-3 text-center">
						         <label class="control-label"  style="color:#00008B;"><span id="for_printing_status">Printing Status</span> </label>
						      </div>

						      <div class="col-sm-9 text-left" id="printing_status">
						         
						      </div>
						       
						         



					       
					       </div><!-- End of <div class="form-group form-group-sm" printing_status-->

					 </div> <!--  End of <div id="div_printing_status" style="display: none">  -->




						<div id="div_dye_cutting" >


								<div class="form-group form-group-sm" >
						      

							      <div class="col-sm-3 text-center">
							         <label class="control-label"  style="color:#00008B;"><span id="for_dye_cutting">Die Cutting</span> </label>
							      </div>

							      <div class="col-sm-9 text-left" id="dye_cutting">
						         
						          </div>
							       
							       


						       
						       </div><!-- End of <div class="form-group form-group-sm" dye_cutting-->

					    </div> <!--  End of <div id="div_dye_cutting" style="display: none">  -->
 
             

             <div><label class="form-control">Process Description</label> </div>





			             <div id="div_product_description" >


									<div class="form-group form-group-sm" >
							      

									        <div class="col-sm-3 text-center">
									         <label class="control-label"  style="color:#00008B;"><span id="for_carton_quantity">Carton Quantity (Pcs):</span> </label>
									        </div>
									       
									         <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="carton_quantity" name="carton_quantity" readonly>

				                            </div>


				                            <div class="col-sm-2 text-center">
										             <label  class="control-label"  style="color:#00008B;"><span id="for_ratio">Ratio :</span> </label>

				                            </div>

				                            <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="ratio" name="ratio" readonly>

				                            </div>


				                            <div class="col-sm-2 text-center">
										             <label  class="control-label"  style="color:#00008B;"><span id="for_board_quantity">Board Quantity (Pcs):</span> </label>

				                            </div>

				                            <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="board_quantity" name="board_quantity" readonly>

				                            </div>



							       
							       </div><!-- End of <div class="form-group form-group-sm" product_description-->



							         <div class="form-group form-group-sm" >
				      

									        <div class="col-sm-3 text-center">
									         <label class="control-label"  style="color:#00008B;"><span id="for_cutter_size">Cutter Size (mm):</span> </label>
									        </div>
									       
									         <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="cutter_size" name="cutter_size" readonly>

				                            </div>



				                            <div class="col-sm-2 text-center">
										             <label class="control-label"  style="color:#00008B;"><span id="for_roll_size">Roll Size :</span> </label>

				                            </div>

				                            <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="roll_size" name="roll_size" readonly>

				                            </div>


				                             <div class="col-sm-2 text-center">
                                                     <label class="control-label"  style="color:#00008B;"><span id="for_cutting_ratio">Cutting Ratio :</span> </label>

				                            </div>

				                            <div class="col-sm-1 text-center">
				                                   
				                                    <input class="form-control input-sm" type="text" id="cutting_ratio" name="cutting_ratio" value="">

				                            </div>




				                           
				                            <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="hidden" id="required_time" name="required_time" value="">

				                            </div>



							       
							       </div><!-- End of <div class="form-group form-group-sm" >-->




							    <div class="form-group form-group-sm" >
				      

						                    <div class="col-sm-3 text-center">
									           <label class="control-label"  style="color:#00008B;"><span id="for_score_or_creez_size">Score/Creez Size (mm):</span> </label>
									        </div>
									       
									         <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="score_or_creez_size" name="score_or_creez_size" readonly>

				                            </div>

				                             <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="score_or_creez_size_1" name="score_or_creez_size_1" readonly>

				                            </div>

				                             <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="score_or_creez_size_2" name="score_or_creez_size_2" readonly>

				                            </div>



				       
				                 </div><!-- End of <div class="form-group form-group-sm" product_description-->



				                 <div class="form-group form-group-sm" >
				      

						                    <div class="col-sm-3 text-center">
									           <label class="control-label"  style="color:#00008B;"><span id="for_slotting_size">Slotting Size (MM):</span> </label>
									        </div>
									       
									         <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="slotting_size" name="slotting_size" readonly>

				                            </div>

				                             <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="slotting_size_1" name="slotting_size_1" readonly>

				                            </div>


				                             <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="slotting_size_2" name="slotting_size_2" readonly>

				                            </div>

				                             <div class="col-sm-1 text-center">
									               
									                <input class="form-control input-sm" type="text" id="slotting_size_3" name="slotting_size_3" readonly>

				                            </div>



				       
				                 </div><!-- End of <div class="form-group form-group-sm" product_description-->



				       
				          </div><!-- End of <div class="form-group form-group-sm" product_description-->








				          <div id="div_layout" >


								<div class="form-group form-group-sm" >
						      

							      <div class="col-sm-3 text-center">
							         <label class="control-label"  style="color:#00008B;"><span id="for_layout">Layout:</span> </label>
							      </div>

							      <div class="col-sm-9 text-left" id="layout">
							          
							      </div>


							      
					    
    

				</div> <!-- End of <div class="panel panel-default"> -->



				<div><label class="form-control">Raw Material</label> </div>

                                 <div class="form-group form-group-sm">
		     
									    <!-- <div class="col-sm-1 text-center">
											
										</div> -->


										<div class="col-sm-3 text-center">
											<label for="test_name_and_method" style="font-size:12px; color:#008000;"></label>
											
									          
										</div>
									 
										 <div class="col-sm-1 text-center">
								              <label for="description_or_type" style="font-size:12px; color:#008000;">Liner</label>
								              
								         </div>

							           <div class="col-sm-1 text-center">
								            <label for="value" style="font-size:12px; color:#008000;">Media</label>
								       </div>
								         
								        <div class="col-sm-1 text-center">
								              <label for="value" style="font-size:12px; color:#008000;">SQM</label>
								              
								        </div>
							          
							               <!--Add Input/Select Field Here No Dive Only Input/Select/Radio Button/Checkbox/Textarea -->
								         
									   <div class="col-sm-1 text-center">
									         <label for="math_op_value" style="font-size:12px; color:#008000;">Total Consumption</label>
									            
									   </div>
								            
								               
								        

					 </div><!-- End of <div class="form-group form-group-sm"  -->


			        <div id="div_measurement_of_carton" >


						<div class="form-group form-group-sm" >
				      

					      <div class="col-sm-3 text-center">
					         <label class="control-label"  style="color:#00008B;"><span id="for_consumption">Consumtion</span> </label>
					      </div>
					       
					       <div class="col-sm-1 text-center">
					               
					                <input class="form-control input-sm" type="text" id="liner_consumption_calc" name="liner_consumption_calc" value="" readonly>

					           </div>

					       

					           <div class="col-sm-1 text-center">
					                <input class="form-control input-sm" type="text" id="media_consumption_calc" name="media_consumption_calc" value="" readonly>
					             
					         </div>
					            
					             
					          <div class="col-sm-1 text-center">
					               <input class="form-control input-sm" type="text" id="sqm_consumption_calc" name="sqm_consumption_calc" value="" readonly>
					              
					           </div>
					            
					                 <!--Add Input/Select Field Here No Dive Only Input/Select/Radio Button/Checkbox/Textarea -->
					              
					          <div class="col-sm-1" for="total_consumption">
                                    

                                     <input class="form-control input-sm" type="text" id="total_consumption" name="total_consumption" value="1" readonly>
						          	
					          </div>

					         
				                
				       
				            </div><!-- End of <div class="form-group form-group-sm" measurement_of_carton-->

				         </div> <!--  End of <div id="div_measurement_of_carton" style="display: none">  -->



				    <div><label class="form-control">Process Information</label> </div>

				         <div class="form-group form-group-sm" id="form-group_for_process_name">
								<label class="control-label col-sm-3" for="process_name" style="color:#00008B;">Process Name:</label>
								<div class="col-sm-5">

									<select  class="form-control" id="process_name" name="process_name" onchange="returning_before_quantity_for_travel_card(this.value)">
													<option select="selected" value="N/A">Select Process Name</option>
													<?php 




														 $sql = "select * from `process_name`";
														 $result= mysqli_query($con,$sql) or die(mysqli_error());
														 while( $row = mysqli_fetch_array( $result))
														 {

															 echo '<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';

														 }

													 ?>
									</select>

									
									
								</div>
								
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->

						
						<div class="form-group form-group-sm" id="form-group_for_before_process_quantity" id="before_process_quantity">
								<label class="control-label col-sm-3" for="before_process_quantity" style="color:#00008B;">Before Process Quantity:</label>
								<div class="col-sm-5">
	                                      
	                                      <input type="text" class="form-control" id="before_process_quantity" name="before_process_quantity" value="" >
									
								</div>
								
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->	
			<?php

                  if($user_name=='mijan' || $user_name=='rejowan' || $user_name=='admin')
                 {



           ?>        

						<div class="form-group form-group-sm" id="form-group_for_process_quantity">
								
								<div class="col-sm-5">
	                                      
	                                      <input type="hidden" class="form-control" id="process_quantity" name="process_quantity" value="0"  >
									
								</div>
								
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->	

                        
           <?php

                 }

                 else {

                       

                
           ?>      


                    <div class="form-group form-group-sm" id="form-group_for_process_quantity">
								<label class="control-label col-sm-3" for="process_quantity" style="color:#00008B;"> Process Quantity</label>
								<div class="col-sm-5">
	                                      
	                                      <input type="text" class="form-control" id="process_quantity" name="process_quantity" value="" >
									
								</div>
								
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->	


            <?php 



             }
            ?>


                
                        </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_actual_roll_size"> -->   



               
                <?php

                 if( ($user_access=='proc_1' || $user_access=='N/A') && ($user_name !='mijan') && ($user_name !='rejowan'))
                 {


                ?>     

                   <div class="form-group form-group-sm" id="form-group_for_actual_ratio">
                          <label class="control-label col-sm-3" for="actual_ratio" style="color:#00008B;"> Actual Ratio</label>
                          <div class="col-sm-5">
                                           
                                <input type="text" class="form-control" id="actual_ratio" name="actual_ratio" value="" onchange="change_acutal_roll_size(this.value)">
                             
                          </div>
                
                        </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_actual_ratio"> --> 

                        <div class="form-group form-group-sm" id="form-group_for_actual_roll_size">
                          <label class="control-label col-sm-3" for="actual_roll_size" style="color:#00008B;"> Actual Roll Size</label>
                          <div class="col-sm-5">
                                           
                                           <input type="text" class="form-control" id="actual_roll_size" name="actual_roll_size" value="" >
                             
                   </div>



		        <?php

                   }

                   else {


		        ?>	

		            <div class="form-group form-group-sm" id="form-group_for_actual_ratio">
                         
                          <div class="col-sm-5">
                                           
                                <input type="hidden" class="form-control" id="actual_ratio" name="actual_ratio" value="" onchange="change_acutal_roll_size(this.value)">
                             
                          </div>
                
                        </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_actual_ratio"> --> 

                        <div class="form-group form-group-sm" id="form-group_for_actual_roll_size">
                         
                          <div class="col-sm-5">
                                           
                                           <input type="hidden" class="form-control" id="actual_roll_size" name="actual_roll_size" value="" >
                             
                   </div>

                <?php

                        }



                 if( $user_name=='mijan' || $user_name=='rejowan' || $user_name=='admin')
                 {



                ?>      
                       


                        <div class="form-group form-group-sm" id="form-group_for_process_wastage">
	                        
	                        <div class="col-sm-5">
	                                         
	                            <input type="hidden" class="form-control" id="process_wastage" name="process_wastage" value="0" >            
	                           
	                        </div>
	                       
                        </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->   

                        <div class="form-group form-group-sm" id="form-group_for_actual_used_linear">
                          <label class="control-label col-sm-3" for="actual_used_linear" style="color:#00008B;"> Actual Used Linear (kg)</label>
                          <div class="col-sm-5">
                                           
                                           <input type="text" class="form-control" id="actual_used_linear" name="actual_used_linear" value="0" >
                             
                          </div>
                
                        </div> 

 

						<div class="form-group form-group-sm" id="form-group_for_actual_used_medium">
	                        <label class="control-label col-sm-3" for="actual_used_medium" style="color:#00008B;"> Actual Used Medium (kg)</label>
	                        <div class="col-sm-5">
	                                         
	                            <input type="text" class="form-control" id="actual_used_medium" name="actual_used_medium" value="0" >
	                                        
	                           
	                        </div>
	                       
                        </div>
                 <?php

                 }

                 else
                 {

                 ?>      

                         <div class="form-group form-group-sm" id="form-group_for_process_wastage">
	                        
	                        <div class="col-sm-5">
	                                         
	                                         <input type="hidden" class="form-control" id="process_wastage" name="process_wastage" value="" >
	                                        
	                           
	                        </div>
	                       
                        </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_creation"> -->   


                        <div class="form-group form-group-sm" id="form-group_for_actual_used_linear">
                           
                          <div class="col-sm-5">
                                           
                                           <input type="hidden" class="form-control" id="actual_used_linear" name="actual_used_linear" value="" >
                             
                          </div>
                
                        </div> 

 

						<div class="form-group form-group-sm" id="form-group_for_actual_used_medium">
	                       
	                        <div class="col-sm-5">
	                                         
	                                         <input type="hidden" class="form-control" id="actual_used_medium" name="actual_used_medium" value="" >
	                                        
	                           
	                        </div>
	                       
                        </div>

                 <?php
                    }

                 ?>

                         <input type="hidden" class="form-control" id="user_access" name="user_access" value="<?php echo $user_access ?>" >



						 <div class="form-group form-group-sm">
								<div class="col-sm-offset-3 col-sm-5">
									<button type="button" name="submit_button" id="submit_button" class="btn btn-primary" onClick="sending_data_of_travel_card_creation_form_for_saving_in_database()" >Submit</button>
									<button type="reset" class="btn btn-success">Reset</button>
								</div>
						   </div>

						</form>



		     

		</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->




     </div> <!-- end of <div class="panel-heading" style="color:#191970;"><b>Process Description</b></div> -->

	
</div> <!-- end of <div class="panel-heading" style="color:#191970;"><b>Order Description</b></div> -->



					



					