<?php
// session_start();
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
/*    $user_name ="Iftekhar";
    $user_id ="Iftekhar";
    $password ="1234";*/

    $buyer_id=$_GET['buyer_id'];
    $sql = "select * from `buyer` WHERE `buyer_id`='$buyer_id'";
    $result= mysqli_query($con,$sql) or die(mysqli_error($con));
    $row = mysqli_fetch_array( $result);

?>
<!-- <script type='text/javascript' src='ccustomerr_form_validation.js'></script> -->

<style>

.form-group		/* This is for reducing Gap among Form's Fields */
{

	margin-bottom: 5px;

}

</style>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
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
 function sending_data_of_edit_buyer_form_for_updating_in_database()
 {


    //    var validate = Form_Validation();
       var validate = true;
       var url_encoded_form_data = $("#buyer_form").serialize(); //This will read all control elements value of the form	
       if(validate != false)
	   {


		  	 $.ajax({
			 		url: 'settings/edit_buyer_saving.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: url_encoded_form_data,
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);
			 				/*window.location = "settings/color.php";*/

			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({

       }//End of if(validate != false)

 }//End of function sending_data_of_color_form_for_saving_in_database()

</script>
<div class="col-sm-12 col-md-12 col-lg-12">

<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

<div class="panel-heading" style="color:#191970;"><b>Buyer</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

 <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item active" aria-current="page">Home</li>
         <li class="breadcrumb-item"><a onclick="load_page('settings/buyer.php')">Add Buyer</a></li>
      </ol>
 </nav>

<form class="form-horizontal" action="" style="margin-top:10px;" name="buyer_form" id="buyer_form">

        <div class="form-group form-group-sm" id="form-group_for_buyer_name">
                <label class="control-label col-sm-3" for="buyer_name" style="color:#00008B;">Buyer Name:</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="buyer_name" name="buyer_name" value="<?php echo $row['buyer_name'] ?>" required>
                    <input type="hidden" id="buyer_id" name="buyer_id" value="<?php echo $row['buyer_id'] ?>">
                </div>
                <i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('buyer_name')"></i>
        </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_buyer_name"> -->

        <div class="form-group form-group-sm" id="form-group_for_buyer_address">
                <label class="control-label col-sm-3" for="buyer_address" style="color:#00008B;">Buyer Address:</label>
                <div class="col-sm-5">
                    <textarea class='form-control' id='buyer_address' name='buyer_address' rows='5' value="<?php echo $row['buyer_address'] ?>"><?php echo $row['buyer_address'] ?></textarea>
                </div>
                <i class="glyphicon glyphicon-remove" onclick="Remove_Value_Of_This_Element('buyer_address')"></i>
        </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_buyer_address"> -->

        <div class="form-group form-group-sm" id="form-group_for_country_of_origin">
        <label class="control-label col-sm-3" for="country_of_origin" style="margin-right:0px; color:#00008B;">Country Of Origin:</label>
            <div class="col-sm-5">
                <select  class="form-control add_buyer" id="country_of_origin" name="country_of_origin">
                            <option select="selected"value="<?php echo $row['country_of_origin'] ?>"><?php echo $row['country_of_origin'] ?></option>
                            <?php 
                                 $sql = 'select name_of_country from `country` order by `name_of_country`';
                                 $result= mysqli_query($con,$sql) or die(mysqli_error($con));
                                 while( $row = mysqli_fetch_array( $result))
                                 {

                                     echo '<option value="'.$row['name_of_country'].'">'.$row['name_of_country'].'</option>';

                                 }

                             ?>
                </select>
            </div>
        </div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_country_of_origin"> -->

        

        <div class="form-group form-group-sm">
                <div class="col-sm-offset-3 col-sm-5">
                    <button type="button" class="btn btn-primary" onClick="sending_data_of_edit_buyer_form_for_updating_in_database()">Update Buyer</button>
                    <button type="reset" class="btn btn-success">Reset</button>
                </div>
        </div>

</form>

</div>

</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->