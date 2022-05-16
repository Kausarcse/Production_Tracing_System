<?php

include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

  $po_details = $_POST['po_details'];

  $split_pp_no_value=explode('?fs?', $po_details);
  $po_number=$split_pp_no_value[0];
  $po_id=$split_pp_no_value[1];
  
  $option="";


		 $sql = " SELECT product_category
		 			FROM po_creation
		 		   where po_creation.po_id = '$po_id'";
		
		 $result= mysqli_query($con,$sql) or die(mysqli_error());

		 while( $row = mysqli_fetch_array( $result))
		 {    
             

			  $option.= $row['product_category'];

		 }

		

		 echo $option;


?>