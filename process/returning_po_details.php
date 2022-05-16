<?php

include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

  $po_details_id = $_POST['po_details_id'];
  $po_number = $_POST['po_number'];

  $split_pp_no_value=explode('?fs?', $po_number);
  $po_number=$split_pp_no_value[0];
  $po_id=$split_pp_no_value[1];
  
  $option="?fs?";


		 $sql = " SELECT po_creation.*, po_details.*
		 			FROM po_creation, po_details
		 		   where po_creation.po_id = '$po_id'
		 		     AND po_details.po_details_id = '$po_details_id'
		 		";
		
		 $result= mysqli_query($con,$sql) or die(mysqli_error());

		 while( $row = mysqli_fetch_array( $result))
		 {    
             

			  $option=$row['customer_id']."?fs?".$row['customer_name']."?fs?".$row['buyer_id']."?fs?".$row['buyer_name']."?fs?".$row['po_quantity']."?fs?".$row['po_creation_date']."?fs?".$row['responsible_person']."?fs?".$row['product_category']."?fs?".$row['order_type']."?fs?".$row['product_delivery_date']."?fs?".$row['po_order_received_date']."?fs?";

			  // $option += $row['measurement_of_carton_length']."?fs?".$row['measurement_of_carton_width']."?fs?".$row['measurement_of_cartoon_height']."?fs?".$row['measurement_of_cartoon_ply']."?fs?".$row['paper_type_linear']."?fs?".$row['paper_type_medium']."?fs?".$row['paper_type_linear_1']."?fs?".$row['flute_type']."?fs?".$row['printing_status']."?fs?".$row['dye_cutting']."?fs?".$row['carton_quantity']."?fs?".$row['ratio']."?fs?".$row['board_quantity']."?fs?".$row['roll_size']."?fs?".$row['score_or_creez_size']."?fs?".$row['slotting_size']."?fs?".$row['layout'];

			  $option .= $row['measurement_of_carton_length']."?fs?".$row['measurement_of_carton_width']."?fs?".$row['measurement_of_cartoon_height']."?fs?".$row['measurement_of_cartoon_ply']."?fs?".$row['paper_type_linear']."?fs?".$row['paper_type_medium']."?fs?".$row['paper_type_linear_1']."?fs?".$row['flute_type']."?fs?".$row['printing_status']."?fs?".$row['dye_cutting']."?fs?".$row['carton_quantity']."?fs?".$row['ratio']."?fs?".$row['board_quantity']."?fs?".$row['roll_size']."?fs?".$row['score_or_creez_size']."?fs?".$row['slotting_size']."?fs?".$row['layout']."?fs?".$row['cutter_size']."?fs?".$row['po_details_id']."?fs?".$row['paper_type_medium_1']."?fs?".$row['paper_type_medium_2']."?fs?".$row['score_or_creez_size_1']."?fs?".$row['score_or_creez_size_2']."?fs?".$row['slotting_size_1']."?fs?".$row['slotting_size_2']."?fs?".$row['slotting_size_3']."?fs?".$row['cutting_ratio'];

		 }

		

		 echo $option;


?>