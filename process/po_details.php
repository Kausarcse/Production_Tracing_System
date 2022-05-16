<?php
session_start();
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();
/*
$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];

$sql="select * from hrm_info.user_login where user_id='$user_id' and `password`='$password'";

$result=mysql_query($sql) or die(mysqli_error());
if(mysql_num_rows($result)<1)
{

	header('Location:logout.php');

}
*/
?>
<script type='text/javascript' src='process/po_details_form_validation.js'></script>


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

function load_full_form_function(po_details)
{
	
		  	 $.ajax({
			 		url: 'process/return_po_product_category.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: {po_details:po_details},
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
			 				if(data=="CARTON")
			 				{     


                                  $('#for_all_details_field').load("process/po_details_for_cartoon.php");
        
			 				}


			 				else
			 				{      
			 					

                                    

                                   $('#for_all_details_field').load("process/po_details_for_all.php");


                                   $('#for_carton_quantity').innerHtml.value=data;
			 					
			 				}

			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({
}
 function sending_data_of_po_details_form_for_saving_in_database()
 {


       var validate = PO_Details_Form_Validation();
       var url_encoded_form_data = $("#po_details_form").serialize(); //This will read all control elements value of the form	
       if(validate != false)
	   {


		  	 $.ajax({
			 		url: 'process/po_details_saving.php',
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

 }//End of function sending_data_of_po_creation_form_for_saving_in_database()



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


</script>
<div class="col-sm-12 col-md-12 col-lg-12">

		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

				<div class="panel-heading" style="color:#191970;"><b>PO</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

				<nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item active" aria-current="page">Home</li>
					     <li class="breadcrumb-item"><a onclick="load_page('process/po_details.php')">Add PO Details</a></li>
					  </ol>
				 </nav>

				<form class="form-horizontal" action="" style="margin-top:10px;" name="po_details_form" id="po_details_form">

                    
                    
                    <div><label class="form-control">Order Description</label> </div>

						<div class="form-group form-group-sm" id="form-group_for_po_number">

							<label><span id="show"></span></label>
                                
							  
								<label class="control-label col-sm-3" for="po_number" style="color:#00008B;">PO Number:</label>
								<div class="col-sm-5">
									<select  class="form-control for_auto_complete" id="po_number" name="po_number" onchange="load_full_form_function(this.value)">
											<option>Select PO Number</option>
											<?php 
												 $sql = 'select po_number,po_id,product_category from `po_creation` order by `row_id`';
												 $result= mysqli_query($con,$sql) or die(mysqli_error($con));
												 while( $row = mysqli_fetch_array( $result))
												 {

													 echo '<option value="'.$row['po_number'].'?fs?'.$row['po_id'].'">'.$row['po_number']."-- ".$row['product_category'].'</option>';

												 }

											 ?>
									</select>
								</div>
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_number"> -->


			         <div id="for_all_details_field">
			         	

                          <!--  for carton -->

			         </div>








				          <div id="div_layout" >


								
						      

								     <div class="form-group form-group-sm">
								     	
										<div class="col-sm-offset-3 col-sm-5">
											<button type="button" class="btn btn-primary" onClick="sending_data_of_po_details_form_for_saving_in_database()">Submit</button>
											<button type="reset" class="btn btn-success">Reset</button>
										</div>
						             </div>

						    </div>
				    </div>  <!-- End of <div class="panel-heading" style="color:#191970;"><b>Order Description</b></div> -->

				</form>

		</div> <!-- End of <div class="panel panel-default"> -->











     <!-- ---------------------------------All  Calculative script---------------------------- -->
      <script>
      	
      	// function calculate_width_wise_data(measurement_of_carton_width)
      	// {
               

       //         var measurement_of_carton_length=document.getElementById('measurement_of_carton_length').value;
       //         var measurement_of_carton_width=document.getElementById('measurement_of_carton_width').value;

       //         var cutter_size_first_step=(parseFloat(measurement_of_carton_length)+parseFloat(measurement_of_carton_width))*2;
               
               
       //         var cutter_size=(cutter_size_first_step+4)* 10;


               



       //         var slotting_size=(measurement_of_carton_length*10)-2;
       //         var slotting_size_1=(measurement_of_carton_width*10)-2;

       //         document.getElementById("cutter_size").value=cutter_size;

              


       //         document.getElementById("slotting_size").value=slotting_size;

       //         document.getElementById("slotting_size_1").value=slotting_size_1;

       //         document.getElementById("slotting_size_2").value=slotting_size;
       //         document.getElementById("slotting_size_3").value=slotting_size_1;
      	// }


      	//   function calculate_height_wise_data()
      	//   {
      	// 	 var measurement_of_cartoon_height=document.getElementById('measurement_of_cartoon_height').value;

      	// 	 var measurement_of_carton_width=document.getElementById('measurement_of_carton_width').value;

              
           
       //        var score_or_creez_size=((measurement_of_carton_width*10)/2);
       //         var score_or_creez_size_1=((measurement_of_cartoon_height*10)-2);
       //         var score_or_creez_size_2=((measurement_of_carton_width*10)/2);


              

      
       //         document.getElementById("score_or_creez_size").value=score_or_creez_size;


       //         document.getElementById("score_or_creez_size_1").value=score_or_creez_size_1;


       //         document.getElementById("score_or_creez_size_2").value=document.getElementById("score_or_creez_size").value;



       //      if(((((parseFloat(measurement_of_carton_width)+parseFloat(measurement_of_cartoon_height))*4)+4)/2.55) < 68)
       //      {
            

       //      	document.getElementById("ratio").value=4;
       //      	var ratio=4;

            

       //      	var roll_size=((parseFloat(score_or_creez_size)+parseFloat(score_or_creez_size_1)+parseFloat(score_or_creez_size_2))* ratio)/25.4;

       //          var calc_roll_size=parseInt(roll_size)+2;

            	

       //           if ( calc_roll_size % 2 == 0) {
							// 		document.getElementById("roll_size").value=calc_roll_size;
							// 	}else{
							// 		document.getElementById("roll_size").value=calc_roll_size+1;
							// 	}

       //      }

       //      else if(((((parseFloat(measurement_of_carton_width)+parseFloat(measurement_of_cartoon_height))*3)+4)/2.55) < 68)
       //      {
            
                 
       //      	document.getElementById("ratio").value=3;
       //      	var ratio=3;
               
         

       //      	var roll_size=((parseFloat(score_or_creez_size)+parseFloat(score_or_creez_size_1)+parseFloat(score_or_creez_size_2))* ratio)/25.4;



       //          var calc_roll_size=parseInt(roll_size)+2;

            	

       //          if ( calc_roll_size % 2 == 0) {
							// 		document.getElementById("roll_size").value=calc_roll_size;
							// 	}else{
							// 		document.getElementById("roll_size").value=calc_roll_size+1;
							// 	}

       //      }

       //      else if(((((parseFloat(measurement_of_carton_width)+parseFloat(measurement_of_cartoon_height))*2)+4)/2.55) < 68)
       //      {
            

       //      	document.getElementById("ratio").value=2;
       //          var ratio=2;
            	

       //      	var roll_size=((parseFloat(score_or_creez_size)+parseFloat(score_or_creez_size_1)+parseFloat(score_or_creez_size_2))* ratio)/25.4;

       //      	var calc_roll_size=parseInt(roll_size)+2;

            	

       //          if ( calc_roll_size % 2 == 0) {
							// 		document.getElementById("roll_size").value=calc_roll_size;
							// 	}else{
							// 		document.getElementById("roll_size").value=calc_roll_size+1;
							// 	}

                

       //      }
       //     else 
       //      {
            

       //      	document.getElementById("ratio").value=1;
       //      	var ratio=1;

            	

       //      	var roll_size=((parseFloat(score_or_creez_size)+parseFloat(score_or_creez_size_1)+parseFloat(score_or_creez_size_2))*parseFloat(ratio))/25.4;

            	

       //          var calc_roll_size=parseInt(roll_size)+2;

            	

       //           if ( calc_roll_size % 2 == 0) {
							// 		document.getElementById("roll_size").value=calc_roll_size;
							// 	}else{
							// 		document.getElementById("roll_size").value=calc_roll_size+1;
							// 	}

       //      }

          
      



       // 	}

  
      	// function total_board_Quantity(carton_quantity){
      	// 	var carton_quantity= carton_quantity;
      	// 	var ratio= document.getElementById("ratio").value;



      	// 	board_quantity= (carton_quantity/ratio);

      		
      	// 	document.getElementById("board_quantity").value=board_quantity;

      		
               
      	// }
      </script>

							       

						       