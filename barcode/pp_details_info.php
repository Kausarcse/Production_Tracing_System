<?php
session_start();

include('../db_connection_class.php');
$obj = new DB_Connection_Class_Main();
$obj->connection();

//$pp_number = $_POST['pp_number'];
$work_order_number = $_POST['work_order_number'];

$sql = "SELECT *
		FROM   proxima_software_data
		WHERE  work_order = '$work_order_number'
		";
$result = mysqli_query($con, $sql) or die(mysqli_error($con));
$row = mysqli_fetch_array($result);

$id = $row['id'];
$pp_number = $row['pp_no'];
$customer = $row['customer'];
$finish_width_in_inch = $row['finish_width'];
$construction = $row['construction'];
$composition = $row['composition'];
$customer_id = '1';

$shade = $row['shade'];
$weave = $row['weave'];
$finished_type = $row['finish_type'];

?>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="pp_number" style="color:#00008B;">PP Number:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="pp_number" name="pp_number" value="<?php echo $pp_number; ?>" readonly>
	</div>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="customer_name" style="color:#00008B;">Customer Name:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="customer_name" name="customer_name" value="<?php echo $customer; ?>" readonly>
		<input type="hidden" name="pp_number2" id="pp_number2" value="<?php echo $pp_number; ?>">
		<input type="hidden" name="customer_id" id="customer_id" value="<?php echo $customer_id; ?>">
		<input type="hidden" name="id" id="id" value="<?php echo $id; ?>">
	</div>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="construction" style="color:#00008B;">Construction:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="construction" name="construction" value="<?php echo $construction; ?>" readonly>
	</div>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="composition" style="color:#00008B;">Composition:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="composition" name="composition" value="<?php echo $composition; ?>" readonly>
	</div>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="weave" style="color:#00008B;">Weave:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="weave" name="weave" value="<?php echo $weave; ?>" readonly>
	</div>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="shade" style="color:#00008B;">Shade:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="shade" name="shade" value="<?php echo $shade; ?>" readonly>
	</div>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="finish_width_in_inch" style="color:#00008B;">Finish Width:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="finish_width_in_inch" name="finish_width_in_inch" value="<?php echo $finish_width_in_inch; ?>" readonly>
	</div>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="finished_type" style="color:#00008B;">Finished Type:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="finished_type" name="finished_type" value="<?php echo $finished_type; ?>" readonly>
	</div>

</div>


<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="roll_no" style="color:#00008B;">Roll No:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="roll_no" name="roll_no" placeholder="Enter Roll No" required>
	</div>

	<i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('roll_no')" style="margin-top:6px;"></i>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="kgs" style="color:#00008B;">KG:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="kgs" name="kgs" placeholder="Enter Kgs">
	</div>

	<i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('kgs')" style="margin-top:6px;"></i>
</div>

<div class="form-group form-group-sm" id="form-group_for_provided_to">
	<label class="control-label col-sm-2" for="length" style="color:#00008B;">Length:</label>
	<div class="col-sm-5" style="padding-right:4px;">
		<input type="text" class="form-control" id="length" name="length" placeholder="Enter Length" required>
	</div>

	<i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('length')" style="margin-top:6px;"></i>
</div>
