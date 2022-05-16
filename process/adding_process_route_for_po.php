<?php
error_reporting(0);
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


//$po_number=$_GET['po_number'];

?>
<script type='text/javascript' src='process/adding_process_route_for_po_form_validation.js'></script>


<style>
th
{
   text-align: center;
}
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

 function deleting_specific_row_of_process_adding_table(row_number)
 {
	 
	
	 var table=document.getElementById("process_adding_table");

	 table.deleteRow(row_number);
	 
	 var total_rows=table.rows.length;
   	 for(var i=1; i<total_rows; i++ ) // New Serial Number Creating
   	 {

    	table.rows[i].cells[0].innerHTML  = i;

	 }

	 
 } // End of function deleting_specific_row_of_process_adding_table(row_number)
 
 function adding_specific_row_of_process_adding_table(row_number)
 {
	 var table=document.getElementById("process_adding_table");

	 var total_rows = table.rows.length;    // Finding total number of Rows in this table.
	 var total_columns = table.rows[0].cells.length; // Finding total number of Cells/Columns in this table.
	 
	 alert(total_columns);
	 alert(total_rows);

	 //alert(total_rows);
	 var new_row_position = row_number+1;
	 var new_row = table.insertRow(new_row_position); // This will insert new row in this table.
	 
	 for(var i=0;i<total_columns;i++) // Adding All Columns to New Row.  
	 {

		var new_cell = new_row.insertCell(i);
		
	 }
	 var last_cell=total_columns-1;
	 table.rows[new_row_position].cells[last_cell].setAttribute("align","center");
	 table.rows[new_row_position].cells[last_cell].setAttribute("style","padding-left:0px; padding-right:0px;");
	 
	 table.rows[new_row_position].cells[last_cell].innerHTML='<!-- <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="adding_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Add</button> --> <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="deleting_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Delete</button>';
	 
	 for(var i=1; i<= total_rows ; i++ ) // New Serial Number Creating
   	 {

    	 table.rows[i].cells[0].innerHTML  = i;

	 }
	 
	 adding_new_form_elements_in_process_adding_table(row_number);
} // End of function adding_specific_row_of_process_adding_table(row_number)

function adding_new_form_elements_in_process_adding_table(row_number)
{
	
	var possible_number_of_process = document.getElementById("possible_number_of_process").value;
	var new_possible_number_of_process = parseInt(possible_number_of_process) + 1;
	document.getElementById("possible_number_of_process").value = new_possible_number_of_process;
	//alert(new_possible_number_of_process);
	
	var table=document.getElementById("process_adding_table");
	var total_rows = table.rows.length;    // Finding total number of Rows in this table.
	var new_row_position = row_number+1;

	var select_elements_of_all_process_names = document.createElement("select");
	select_elements_of_all_process_names.setAttribute("class","form-control");
	select_elements_of_all_process_names.setAttribute("id","process_name_"+new_possible_number_of_process);
	select_elements_of_all_process_names.setAttribute("name","process_name_"+new_possible_number_of_process);
	
	table.rows[new_row_position].cells[1].appendChild(select_elements_of_all_process_names);
	

	var option_elements = document.createElement("option");
	option_elements.setAttribute("selected", "selected");
	option_elements.setAttribute("value", "select");
	var text = document.createTextNode("Select Process Name");
	option_elements.appendChild(text);
	new_select_element = "process_name_"+new_possible_number_of_process;
	document.getElementById(new_select_element).appendChild(option_elements);
	var all_process_list = document.getElementById('all_process_names').innerHTML;
	var splitted_all_process_list = all_process_list.split("?proc?");


    for(var i=0;i<splitted_all_process_list.length-1;i++)
	{
		option_elements = document.createElement("option");
		option_elements.setAttribute("value",splitted_all_process_list[i].trim());

		
	    var all_process_list_for_process_name = splitted_all_process_list[i].split("?fs?");

		text = document.createTextNode(all_process_list_for_process_name[0].trim());
		option_elements.appendChild(text);
		new_select_element = "process_name_"+new_possible_number_of_process;
		document.getElementById(new_select_element).appendChild(option_elements);

	
	}
	table.rows[new_row_position].cells[2].innerHTML='<input type="text" class="form-control"  id="process_serial_'+new_possible_number_of_process+'" name="process_serial_'+new_possible_number_of_process+'">';

	table.rows[new_row_position].cells[3].innerHTML='<select  class="form-control" id="process_or_reprocess_'+new_possible_number_of_process+'" name="process_or_reprocess_'+new_possible_number_of_process+'">'
											+'<option value="process" select="selected">Process</option>'
											+'<option value="re-process">Re-Process</option>'
								            +' </select>';
	
	
} // End of function adding_new_form_elements_in_process_adding_table(row_number)




 function sending_data_of_adding_process_route_for_po_form_for_saving_in_database()
 {

		
	   var validate = Adding_Process_Route_For_PO_Form_Validation();


      var url_encoded_form_data = $("#adding_process_route_for_po_form").serialize(); ///This will read all control elements value of the form


       if(validate != false)
	   {


		  	 $.ajax({
			 		url: 'process/adding_process_route_for_po_saving.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{      /*document.getElementById("form-group_for_po_number").innerHTML=data;*/
			 				alert(data);
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({

       }//End of if(validate != false)

 }//End of function sending_data_of_adding_process_route_for_po_form_for_saving_in_database()


 function sending_data_for_delete(value)
 {
        var split_value=value.split("?fs?");
        var po_id=split_value[0];
        var po_details_id=split_value[1];
       //var url_encoded_form_data = 'po_id='+value;
       
		  	 $.ajax({
			 		url: 'process/deleting_adding_process_route_for_po.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: {po_id:po_id,po_details_id:po_details_id},
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



 }//End of function sending_data_for_delete()



  function sending_data_for_update(get_all_data)
 {
      
      var get_all_data=get_all_data;

       $('#div_full_form').load("process/edit_adding_process_route_for_po.php?update_value="+encodeURIComponent(get_all_data));

 }

 function po_number_change()
 {
 	 var po_number = document.getElementById("po_number").value;
 	 $.ajax({
	 		url: 'process/returning_po_details_info.php',
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



/***************************************************** FOR AUTO COMPLETE********************************************************************/

$('.for_auto_complete').chosen();


/***************************************************** FOR AUTO COMPLETE********************************************************************/




</script>
<div class="col-sm-12 col-md-12 col-lg-12">


    <div id="div_full_form">
		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

				<div class="panel-heading" style="color:#191970;"><b>Adding Process Route for PO</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

				<nav aria-label="breadcrumb">
						  <ol class="breadcrumb">
						    <li class="breadcrumb-item active" aria-current="page" >Home</li>
						    <li class="breadcrumb-item"><a onclick="load_page('process/adding_process_route_for_po.php')">Adding Process Route for PO</a></li>
						  </ol>
			    </nav>
			    
				<form class="form-horizontal" action="" style="margin-top:10px;" name="adding_process_route_for_po_form" id="adding_process_route_for_po_form">

					

						<div class="form-group form-group-sm" id="form-group_for_po_number">

							<label><span id="show"></span></label>
                                
							  
								<label class="control-label col-sm-3" for="po_number" style="color:#00008B;">PO Number:</label>
								<div class="col-sm-5">
									<select  class="form-control for_auto_complete" id="po_number" name="po_number" onchange="po_number_change()">
											<option >Select PO Number</option>
											<?php 
												 $sql = 'select po_number, po_id from `po_creation` order by `row_id`';
												 $result= mysqli_query($con,$sql) or die(mysqli_error());
												 while( $row = mysqli_fetch_array( $result))
												 {

													 echo '<option value="'.$row['po_number'].'?fs?'.$row['po_id'].'">'.$row['po_number'].'</option>';

												 }

											 ?>
									</select>
								</div>
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_number"> -->

						<div id="po_details_info">
							<div class="form-group form-group-sm" id="form-group_for_po_number">

								<label><span id="show"></span></label>
	                                
								  
									<label class="control-label col-sm-3" for="po_details" style="color:#00008B;">PO Details:</label>
									<div class="col-sm-5">
										<select  class="form-control for_auto_complete" id="po_details" name="po_details">
												<option >PO Details</option>
												<?php 
													 $sql = 'select * from `po_details` order by `row_id`';
													 $result= mysqli_query($con,$sql) or die(mysqli_error());
													 while( $row = mysqli_fetch_array( $result))
													 {

														 echo '<option value="'.$row['po_details_id'].'">Height: '.$row['measurement_of_cartoon_height'].', Width: '.$row['measurement_of_carton_width'].', Length: '.$row['measurement_of_carton_length'].', Ply: '.$row['measurement_of_cartoon_ply'].'</option>';

													 }

												 ?>
										</select>
									</div>
							</div>
						</div>

                         
                        <table id="process_adding_table" class="table table-striped table-bordered" style="padding:0px; margin:0px;">
                             <thead>
                                   <tr>
                                     <th style="width:10px;">SI</th>
                                     <th style='text-align:center;'>Process Name</th>
                                     <th style="width:130px; text-align:center" >Process Sl No.</th>
                                     <th style="width:100px;text-align:center;" >Procress</th>
                                     <th style="width:100px;text-align:center;" >Action</th>
                                     
        
                                   </tr>
                             </thead>
                                
                             <tbody>
                                 
                 
                              <tr id='row_for_process_01'>
                              	 <td>1</td>
                              	 <td>
                           			 <!-- <input type="text" class="form-control"  id="process_name_1" name="process_name_1" value="'.'Greige Receiving'.'?fs?'.'proc_20'.'"> -->
									<select  class="form-control" id="process_name_1" name="process_name_1">
												<option  value="select">Select Process Name </option>
												<?php 
												 $sql = "select distinct * from `process_name` order by row_id";
												 $result= mysqli_query($con,$sql) or die(mysqli_error());
												 while( $row = mysqli_fetch_array( $result))
												 {  
												 	if($row['process_id']=='proc_1'){
												 		 
												 		 echo '<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
												 	
												 	}

													 

												 }

											 ?>
								</select>
							
						
                         </td>
                              	 <td align="center">
                                 <input type="text" class="form-control"  id="process_serial_1" name="process_serial_1" value="1">
                                 
                                 </td>

                                 <td>
                                 	<select  class="form-control" id="process_or_reprocess_1" name="process_or_reprocess_1">
											<option value="process" select="selected">Process</option>
											<option value="re-process">Re-Process</option>
								   </select>
                                 </td>

                              	 <td align="center" style="padding-left:0px; padding-right:0px;">

                                      <!-- <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="adding_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Add</button> -->
                                      <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="deleting_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Delete</button>
                              	</td>
                              	 
                              </tr>
                               <tr>
                              	 <td>2</td>
                              	 <td>

								<select  class="form-control" id="process_name_2" name="process_name_2">
											<option  value="select">Select Process Name</option>
											<?php 
												 $sql = 'select distinct * from `process_name` order by `row_id`';
												 $result= mysqli_query($con,$sql) or die(mysqli_error());
												 while( $row = mysqli_fetch_array( $result))
												 { 


													 if($row['process_id']!='proc_1'){
												 		 echo '<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
												 	}

												 }

											 ?>
								</select>

                              	 </td>
                              	 <td align="center">
                                 <input type="text" class="form-control"  id="process_serial_2" name="process_serial_2" value="2">
                                 </td>
                                 <td>
                                 	<select  class="form-control" id="process_or_reprocess_2" name="process_or_reprocess_2">
											
											<option value="process" selected>Process</option>
											<option value="re-process">Re-Process</option>
								   </select>
                                 </td>

                              	 <td align="center" style="padding-left:0px; padding-right:0px;">

                                      <!-- <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="adding_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Add</button> -->
                                      <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="deleting_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Delete</button>
                              	</td>
                              	 
                              </tr>

                               <tr>
                              	 <td>3</td>
                              	 <td>

								<select  class="form-control" id="process_name_3" name="process_name_3">
											<option  value="select">Select Process Name</option>
											<?php 
												 $sql = 'select distinct * from `process_name` order by `row_id`';
												 $result= mysqli_query($con,$sql) or die(mysqli_error());
												 while( $row = mysqli_fetch_array( $result))
												 {

													 if($row['process_id']!='proc_1'){
												 		 echo '<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
												 	}

												 }

											 ?>
								</select>

                              	 </td>
                              	 <td align="center">
                                 <input type="text" class="form-control"  id="process_serial_3" name="process_serial_3" value="3">
                                 </td>
                                 <td>
                                 	<select  class="form-control" id="process_or_reprocess_3" name="process_or_reprocess_3">
											
											<option value="process" selected>Process</option>
											<option value="re-process">Re-Process</option>
								   </select>
                                 </td>

                              	 <td align="center" style="padding-left:0px; padding-right:0px;">

                                     <!-- <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="adding_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Add</button> -->
                                      <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="deleting_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Delete</button>
                              	</td>
                              	 
                               <tr>
                              	 <td>4</td>
                              	 <td>

								<select  class="form-control" id="process_name_4" name="process_name_4">
											<option  value="select">Select Process Name</option>
											<?php 
												 $sql = 'select distinct * from `process_name` order by `row_id`';
												 $result= mysqli_query($con,$sql) or die(mysqli_error());
												 while( $row = mysqli_fetch_array( $result))
												 {

													 if($row['process_id']!='proc_1'){
												 		 echo '<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
												 	}

												 }

											 ?>
								</select>

                              	 </td>
                              	 <td align="center">
                                 <input type="text" class="form-control"  id="process_serial_4" name="process_serial_4" value="4">
                                 </td>

                                 <td>
                                 	<select  class="form-control" id="process_or_reprocess_4" name="process_or_reprocess_4">
											
											<option value="process" selected>Process</option>
											<option value="re-process">Re-Process</option>
								   </select>
                                 </td>

                              	 <td align="center" style="padding-left:0px; padding-right:0px;">

                                      <!-- <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="adding_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Add</button> -->
                                      <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="deleting_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Delete</button>
                              	</td>
                              	 
                              </tr>

                               <tr>
                              	 <td>5</td>
                              	 <td>

								<select  class="form-control" id="process_name_5" name="process_name_5">
											<option  value="select">Select Process Name</option>
											select  class="form-control" id="process_name_5" name="process_name_5">
											<?php 
												 $sql = 'select distinct * from `process_name` order by `row_id`';
												 $result= mysqli_query($con,$sql) or die(mysqli_error());
												 while( $row = mysqli_fetch_array( $result))
												 {

													 if($row['process_id']!='proc_1'){
												 		 echo '<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
												 	}

												 }

											 ?>
								</select>

                              	 </td>
                              	 <td align="center">
                                 <input type="text" class="form-control"  id="process_serial_5" name="process_serial_5" value="5">
                                 </td>

                                 <td>
                                 	<select  class="form-control" id="process_or_reprocess_5" name="process_or_reprocess_5">
											
											<option value="process" selected>Process</option>
											<option value="re-process">Re-Process</option>
								   </select>
                                 </td>

                              	 <td align="center" style="padding-left:0px; padding-right:0px;">

                                      <!-- <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="adding_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Add</button> -->
                                      <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="deleting_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Delete</button>
                              	</td>
                              	 
                              </tr>
                              



                              <tr>
                              	 <td>6</td>
                              	 <td>

								<select  class="form-control" id="process_name_6" name="process_name_6">
											<option  value="select">Select Process Name</option>
											select  class="form-control" id="process_name_6" name="process_name_6">
											<?php 
												 $sql = 'select distinct * from `process_name` order by `row_id`';
												 $result= mysqli_query($con,$sql) or die(mysqli_error());
												 while( $row = mysqli_fetch_array( $result))
												 {

													 if($row['process_id']!='proc_1'){
												 		 echo '<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
												 	}

												 }

											 ?>
								</select>

                              	 </td>
                              	 <td align="center">
                                 <input type="text" class="form-control"  id="process_serial_6" name="process_serial_6" value="6">
                                 </td>

                                 <td>
                                 	<select  class="form-control" id="process_or_reprocess_6" name="process_or_reprocess_6">
											
											<option value="process" selected>Process</option>
											<option value="re-process">Re-Process</option>
								   </select>
                                 </td>

                              	 <td align="center" style="padding-left:0px; padding-right:0px;">

                                      <!-- <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="adding_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Add</button> -->
                                      <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="deleting_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Delete</button>
                              	</td>
                              	 
                              </tr>


                              <tr>
                                 <td>7</td>
                                 <td>

				                <select  class="form-control" id="process_name_7" name="process_name_7">
				                      <option  value="select">Select Process Name</option>
				                      select  class="form-control" id="process_name_7" name="process_name_7">
				                      <?php 
				                         $sql = 'select distinct * from `process_name` order by `row_id`';
				                         $result= mysqli_query($con,$sql) or die(mysqli_error());
				                         while( $row = mysqli_fetch_array( $result))
				                         {

				                           if($row['process_id']!='proc_1'){
												 		 echo '<option value="'.$row['process_name']."?fs?".$row['process_id'].'">'.$row['process_name'].'</option>';
												 	}

				                         }

				                       ?>
				                </select>

				                                 </td>
				                                 <td align="center">
				                                 <input type="text" class="form-control"  id="process_serial_7" name="process_serial_7" value="7">
				                                 </td>

				                                 <td>
				                                  <select  class="form-control" id="process_or_reprocess_7" name="process_or_reprocess_7">
				                      
				                      <option value="process" selected>Process</option>
				                      <option value="re-process">Re-Process</option>
				                   </select>
                                 </td>

                                 <td align="center" style="padding-left:0px; padding-right:0px;">

                                      <!-- <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="adding_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Add</button> -->
                                      <button type="button" class="btn btn-xs btn-info" style="padding-top:1px;" onClick="deleting_specific_row_of_process_adding_table(this.parentNode.parentNode.rowIndex)">Delete</button>
                                </td>
                                 
                              </tr>



                              

                          </tbody>
                        </table>

						</div>  <!-- End of <div class="col-sm-7"> <-- This will hold table in the form --> 
                        
					</div>
					
					<div class="form-group form-group-sm" id='form-group_div_for_submit_button'>
								<div class="col-sm-offset-2 col-sm-5">
									<button type="button" class="btn btn-primary" onClick="sending_data_of_adding_process_route_for_po_form_for_saving_in_database()">Submit</button>
									<button type="reset" class="btn btn-success">Reset</button>
								</div>
					</div> <!-- End of <div class="form-group form-group-sm" id='form-group_div_for_submit_button'> -->


					
				</form>
				
            
				
		</div> <!-- End of <div class="panel panel-default"> -->


           
        <div class="panel panel-default" id="adding_process_route_for_po_list">
             

        	
             <div class="form-group form-group-sm" id="form-group_for_test_method_name">



					         <table id="datatable-buttons" class="table table-striped table-bordered">
					         	<thead>
					                 <tr>
					                 <th>SI</th>
					                 <th>PO Number</th>
					                 
					                 <!-- <th>Process Name</th> -->
					                 <th>Height</th>
					                 <th>Width</th>
					                 <th>Length</th>
					                <!--  <th>Process Serial</th> -->
					                 <th>Action</th>
					                 </tr>
					            </thead>
					            <tbody>
					            <?php 
					                            $s1 = 1;
					                            $sql_for_process_route = "SELECT DISTINCT po_number,po_id,po_details_id FROM adding_process_route_for_po ORDER BY row_id ASC";

					                            $res_for_process_route = mysqli_query($con, $sql_for_process_route);

					                            while ($row = mysqli_fetch_assoc($res_for_process_route)) 
					                            { 

                                                 $po_id=$row['po_id'];
                                                 $po_details_id=$row['po_details_id'];
					                             $sql_for_po = "SELECT DISTINCT po_number,po_id,measurement_of_cartoon_height,measurement_of_carton_width,measurement_of_carton_length FROM po_details where po_id='$po_id' and po_details_id='$po_details_id'";

					                            $res_fo_po = mysqli_query($con, $sql_for_po);

					                            $row_for_po = mysqli_fetch_assoc($res_fo_po);
					                            $value=$row['po_id']."?fs?".$row['po_details_id'];
 

					             ?>

					             <tr>
					                <td><?php echo $s1; ?></td>
					                <td><?php echo $row_for_po['po_number']; ?></td>
					               <!--  <td><?php echo $row['process_name']; ?></td> -->
					                <td><?php echo $row_for_po['measurement_of_cartoon_height']; ?></td>
					                <td><?php echo $row_for_po['measurement_of_carton_width']; ?></td>
					                <td><?php echo $row_for_po['measurement_of_carton_length']; ?></td>
					                <!-- <td><?php echo $row['process_serial_no']; ?></td> -->
					                <td>
					                      
					                        
					                       

					                         <?php
                                               
                                               
					                         ?>

					                         <!-- <button type="submit" id="" name="update_pp_info"  class="btn btn-info btn-xs" onclick="sending_data_for_update('<?php echo $update_value; ?>')"> Edit </button> -->

					                         <button type="submit" id="delete_pp_info" name="delete_pp_info"  class="btn btn-danger btn-xs" onclick="sending_data_for_delete('<?php echo $value; ?>')"> Delete </button>

					                         

					                         
					                 </td>


					                <?php
					                              
					                $s1++;
					                   }
					                 ?> 
					             </tr>

					             
					          </tbody>
					         </table>

					     </div>  <!--  End of <div class="form-group form-group-sm" id="form-group_for_test_method_name"> -->


					      <script>
	               			 /*$(document).ready(function() {
							    
							    $('#datatable-buttons thead tr').clone(true).appendTo( '#datatable-buttons thead' );
							    $('#datatable-buttons thead tr:eq(1) th').each( function (i) {
							        var title = $(this).text();
							        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );


							 
							        $( 'input', this ).on( 'keyup change', function () {
							            if ( table.column(i).search() !== this.value ) {
							                table
							                    .column(i)
							                    .search( this.value )
							                    .draw();
							            }
							        } );
							    } );
							 
							    var table = $('#datatable-buttons').DataTable( {
							       scrollY:        "300px",
							        scrollX:        true,
							        scrollCollapse: true,
							        paging:         false,
							        columnDefs: [
							            { width: '20%', targets: 0 }
							        ],
							        fixedColumns: true
							    } );
							} );*/
				       </script>
		          </div>  <!-- End of <div class="panel panel-default"> -->
					        
			</div>  <!--  End of id=full_div_form -->		     

	    </div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->

	


<div id='all_process_names' style="visibility:hidden;">
          
    <?php 
            $sql = 'select distinct * from `process_name` order by `process_name`';
            $result= mysqli_query($con,$sql) or die(mysqli_error());
            while( $row = mysqli_fetch_array( $result))
            {
               
                echo $row['process_name']."?fs?".$row['process_id']."?proc?";
               

            }

    ?>

</div>