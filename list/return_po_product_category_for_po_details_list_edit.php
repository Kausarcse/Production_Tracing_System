<?php

include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

 $po_details_id = $_POST['po_details_id'];

$sql_po_id_from_po_details = "SELECT po_id FROM po_details WHERE po_details_id = '$po_details_id'";
$result_po_id_from_po_details = mysqli_query($con,$sql_po_id_from_po_details);
$row_for_po_id = mysqli_fetch_assoc($result_po_id_from_po_details);

$po_id =  $row_for_po_id['po_id'];





  
  $option="";


		 $sql = " SELECT product_category
		 			FROM po_creation
		 		   where po_creation.po_id = '$po_id'";
                   
		
		 $result= mysqli_query($con,$sql) or die(mysqli_error($con));

		 while( $row = mysqli_fetch_array( $result))
		 {    
             

			  $option.= $row['product_category'];

		 }

		

		 echo $option;


?>