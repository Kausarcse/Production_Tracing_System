<?php

include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

  $travel_card_id = $_POST['travel_card_id'];

   $option="?fs?";
		 $sql = " SELECT po_id,po_details_id
		 			FROM travel_card_details
		 		   where travel_card_id = '$travel_card_id'";
		 
		 $result= mysqli_query($con,$sql) or die(mysqli_error());

		 while( $row = mysqli_fetch_array( $result))
		 {    
             

			 

			  $option .= $row['po_id']."?fs?".$row['po_details_id'];

		 }

		

		 echo $option;


?>