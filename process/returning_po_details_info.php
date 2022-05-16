<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$po_number = $_POST['po_number'];

$splitted_customer= explode("?fs?",$po_number);
$po_number=$splitted_customer[0];
$po_id=$splitted_customer[1];

?>


<div class="form-group form-group-sm" id="form-group_for_po_number">

	<label><span id="show"></span></label>
        
	  
		<label class="control-label col-sm-3" for="po_details" style="color:#00008B;">PO Details:</label>
		<div class="col-sm-5">
			<select  class="form-control for_auto_complete" id="po_details" name="po_details" onchange="get_po_details(this.value)">
					<option >Select PO Details</option>
					<?php 
						 $sql = "select * from `po_details` where `po_id`='$po_id' and `po_number`='$po_number' order by `row_id`";
						 $result= mysqli_query($con,$sql) or die(mysqli_error());
						 while( $row = mysqli_fetch_array( $result))
						 {

							 echo '<option value="'.$row['po_details_id'].'">Length: '.$row['measurement_of_carton_length'].', Width: '.$row['measurement_of_carton_width'].',Height: '.$row['measurement_of_cartoon_height'].',  Ply: '.$row['measurement_of_cartoon_ply'].'</option>';

						 }

					 ?>
			</select>
		</div>
</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_po_number"> 