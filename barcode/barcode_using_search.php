<?php
session_start();

include('../db_znzqc_connection_class.php');
$obj2 = new DB_Connection_Class();
$obj2->connection();

include('../db_connection_class.php');
$obj = new DB_Connection_Class_Main();
$obj->connection();



//$user_id = $_SESSION['user_id'];
//$password = $_SESSION['password'];




// $sql="select * from user_login where user_id='$user_id' and `password`='$password'";

// $result=mysqli_query($con,$sql) or die(mysqli_error($con));

// $row = mysqli_fetch_assoc($result);

// if(mysqli_num_rows($result)<1)
// {

// 	header('Location: ../../logout.php');

// }

// else
// {
// 	$created_by = $row['user_id'];
// 	$creator_full_name = $row['user_name'];
// 	$creator_division = $row['organization_name'];
// 	$creator_dept = $row['user_type'];
// 	$location = $row['organization_location'];
// }

?>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>


<style>

.form-group		/* This is for reducing Gap among Form's Fields */
{

	margin-bottom: 5px;

}

</style>

<script>

$(document).ready(function()
{
	

});

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
	    var checkbox_btn = document.getElementsByName(checkbox_element+'[]');
	 	for(var i=0;i<checkbox_btn.length;i++)
		{

				checkbox_btn[i].checked = false;

		}
}

function reset_dropdown(select_element)
{

	  document.getElementById(select_element).selectedIndex = 0;

}

 function pp_number_change()
 {
 	var pp_number = document.getElementById("pp_number").value;
 	$.ajax({
	 		url: 'all_it_asset_forms/barcode/work_order_number.php',
	 		dataType: 'text',
	 		type: 'post',
	 		contentType: 'application/x-www-form-urlencoded',
	 		data: {pp_number: pp_number},
	 		success: function( data, textStatus, jQxhr )
	 		{
	 				//alert(data);
	 				document.getElementById('work_order').innerHTML=data;
	 				$('.for_auto_complete').chosen();
	 		},
	 		error: function( jqXhr, textStatus, errorThrown )
	 		{
	 				//console.log( errorThrown );
	 				alert(errorThrown);
	 		}
	 }); // End of $.ajax({
 }

function details_information()
{
 	//var pp_number = document.getElementById("pp_number").value;
 	var work_order_number = document.getElementById("work_order_number").value;
 	$.ajax({
	 		url: 'all_it_asset_forms/barcode/pp_details_info.php',
	 		dataType: 'text',
	 		type: 'post',
	 		contentType: 'application/x-www-form-urlencoded',
	 		data: {work_order_number: work_order_number},
	 		success: function( data, textStatus, jQxhr )
	 		{
	 				//alert(data);
	 				document.getElementById('details_info').innerHTML=data;
	 		},
	 		error: function( jqXhr, textStatus, errorThrown )
	 		{
	 				//console.log( errorThrown );
	 				alert(errorThrown);
	 		}
	 }); // End of $.ajax({
}


 function sending_data_of_barcode()
 {
 	var id=document.getElementById('id').value;
 	var pp_number=document.getElementById('pp_number2').value;
 	var work_order_number=document.getElementById('work_order_number').value;
 	var customer_name=document.getElementById('customer_name').value;
 	var customer_id=document.getElementById('customer_id').value;
 	var construction=document.getElementById('construction').value;
 	var finish_width_in_inch=document.getElementById('finish_width_in_inch').value;
 	var roll_no=document.getElementById('roll_no').value;
 	var kgs=document.getElementById('kgs').value;
	var composition=document.getElementById('composition').value;
 	var shade=document.getElementById('shade').value;
 	var weave=document.getElementById('weave').value;
 	var length=document.getElementById('length').value;
 	var finished_type=document.getElementById('finished_type').value;

    //$('#element').load('all_it_asset_forms/barcode/barcode_create.php?'+total;
    //$('#element').load('all_it_asset_forms/barcode/barcode_create.php?pp_number'+encodeURIComponent(pp_number);
    $('#element').load('all_it_asset_forms/barcode/barcode_create.php?pp_number='+encodeURIComponent(pp_number)+'&customer_name='+encodeURIComponent(customer_name)+'&work_order_number='+encodeURIComponent(work_order_number)+'&customer_id='+encodeURIComponent(customer_id)+'&construction='+encodeURIComponent(construction)+'&finish_width_in_inch='+encodeURIComponent(finish_width_in_inch)+'&roll_no='+encodeURIComponent(roll_no)+'&kgs='+encodeURIComponent(kgs)+'&shade='+encodeURIComponent(shade)+'&composition='+encodeURIComponent(composition)+'&weave='+encodeURIComponent(weave)+'&length='+encodeURIComponent(length)+'&finished_type='+encodeURIComponent(finished_type)+'&id='+encodeURIComponent(id));

 }

$('.for_auto_complete').chosen();

</script>
<div class="col-sm-12 col-md-12 col-lg-12">
	<div id='element'>

		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

				<div class="panel-heading" style="color:#191970;"><b>Barcode Generating</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

				<form class="form-horizontal row" action="" style="margin-top:10px;" method="post" name="attendance_management_device_information_form" id="attendance_management_device_information_form">

					<div class="col-md-12">

						<div class="form-group form-group-sm" id="form-group_for_manufacturer">
							<label class="control-label col-sm-2" for="work_order_number" style="color:#00008B;">Work Order Number:</label>
							<div class="col-sm-5" style="padding-right:4px;">
								<select class="form-control for_auto_complete" id="work_order_number" name="work_order_number" onchange="details_information()">
								  <option >Select Work Order Number</option>

								  <?php
								  		$sql = "SELECT work_order
												FROM   proxima_software_data";
										$result = mysqli_query($con, $sql) or die(mysqli_error($con));
									while($row = mysqli_fetch_array($result))
									{		
										  $work_order_number = $row['work_order'];
										  echo '<option value="'.$work_order_number.'">'.$work_order_number.'</option>';
									}

							      ?>
								</select>
							</div>
						</div> 

						<!-- <div class="form-group form-group-sm" id="form-group_for_manufacturer">
								<label class="control-label col-sm-2" for="pp_number" style="color:#00008B;">PP Number:</label>
								<div class="col-sm-5" style="padding-right:4px;">
									<select class="form-control for_auto_complete" id="pp_number" name="pp_number" onchange="pp_number_change()">
									  <option selected>Select PP Number</option>

									  <?php
												 
										$sql = "SELECT DISTINCT(pp_no) FROM proxima_software_data";
										//$sql = "SELECT DISTINCT pp_number, row_id FROM adding_process_to_version";
										$result = mysqli_query($con, $sql) or die(mysql_error());
										while($row = mysqli_fetch_array($result))
										{		
											  $pp_number = $row['pp_no'];
											 
											  echo '<option value="'.$pp_number.'">'.$pp_number.'</option>';
										}

                                      ?>
									</select>
								</div>

						</div> -->

						<div id="work_order">
							
						</div>	

						<div id="details_info">
							
						</div>

						<div class="form-group form-group-sm">
							<div class="col-sm-offset-1 col-sm-5">
								<button type="button" class="btn btn-primary" onClick="sending_data_of_barcode()">Submit</button>
								<button type="reset" class="btn btn-success">Reset</button>
							</div>
						</div>

					</div>

				</form>

		</div> <!-- End of <div class="panel panel-default"> -->

    </div> <!-- end of </div> -->

</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->




