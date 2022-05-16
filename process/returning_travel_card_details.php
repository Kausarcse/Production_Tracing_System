<?php
error_reporting(0);
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

  $travel_card_id = $_POST['travel_card_id'];
  
  $option="?fs?";


		 // $sql = " SELECT po_creation.*, po_details.*, travel_card_details.*
		 // 			FROM po_creation, po_details, travel_card_details
		 // 		   where travel_card_details.travel_card_id = '$travel_card_id'
		 // 		     AND po_creation.po_id = travel_card_details.po_id
		 // 		     AND po_details.po_details_id = travel_card_details.po_details_id
		 // 		";


		$sql = " SELECT po_creation.*, po_details.*, travel_card_details.*,travel_card_details_for_transactions.actual_used_linear, travel_card_details_for_transactions.actual_used_medium
		 			FROM po_creation, po_details, travel_card_details
		 			Left Join travel_card_details_for_transactions on 
		 				travel_card_details_for_transactions.travel_card_id = travel_card_details.travel_card_id
							AND travel_card_details_for_transactions.process_id = travel_card_details.process_id
		 		   where travel_card_details.travel_card_id = '$travel_card_id'
		 		     AND po_creation.po_id = travel_card_details.po_id
		 		     AND po_details.po_details_id = travel_card_details.po_details_id
		 		";	


		
		 $result= mysqli_query($con,$sql) or die(mysqli_error());

		 while( $row = mysqli_fetch_array( $result))
		 {    
             

			  $option=$row['customer_id']."?fs?".$row['customer_name']."?fs?".$row['buyer_id']."?fs?".$row['buyer_name']."?fs?".$row['po_quantity']."?fs?".$row['po_creation_date']."?fs?".$row['responsible_person']."?fs?".$row['product_category']."?fs?".$row['order_type']."?fs?".$row['product_delivery_date']."?fs?".$row['po_order_received_date']."?fs?";

			  // $option += $row['measurement_of_carton_length']."?fs?".$row['measurement_of_carton_width']."?fs?".$row['measurement_of_cartoon_height']."?fs?".$row['measurement_of_cartoon_ply']."?fs?".$row['paper_type_linear']."?fs?".$row['paper_type_medium']."?fs?".$row['paper_type_linear_1']."?fs?".$row['flute_type']."?fs?".$row['printing_status']."?fs?".$row['dye_cutting']."?fs?".$row['carton_quantity']."?fs?".$row['ratio']."?fs?".$row['board_quantity']."?fs?".$row['roll_size']."?fs?".$row['score_or_creez_size']."?fs?".$row['slotting_size']."?fs?".$row['layout'];

			  $option .= $row['measurement_of_carton_length']."?fs?".$row['measurement_of_carton_width']."?fs?".$row['measurement_of_cartoon_height']."?fs?".$row['measurement_of_cartoon_ply']."?fs?".$row['paper_type_linear']."?fs?".$row['paper_type_medium']."?fs?".$row['paper_type_linear_1']."?fs?".$row['flute_type']."?fs?".$row['printing_status']."?fs?".$row['dye_cutting']."?fs?".$row['carton_quantity']."?fs?".$row['ratio']."?fs?".$row['board_quantity']."?fs?".$row['roll_size']."?fs?".$row['score_or_creez_size']."?fs?".$row['slotting_size']."?fs?".$row['layout']."?fs?".$row['cutter_size']."?fs?".$row['po_details_id']."?fs?".$row['po_number']."?fs?".$row['po_id']."?fs?".$row['travel_card_creation_date']."?fs?".$row['required_time']."?fs?".$row['liner_consumption_calc']."?fs?".$row['media_consumption_calc']."?fs?".$row['sqm_consumption_calc']."?fs?".$row['total_consumption']."?fs?".$row['paper_type_medium_1']."?fs?".$row['paper_type_medium_2']."?fs?".$row['score_or_creez_size_1']."?fs?".$row['score_or_creez_size_2']."?fs?".$row['slotting_size_1']."?fs?".$row['slotting_size_2']."?fs?".$row['slotting_size_3']."?fs?".$row['cutting_ratio']."?fs?".$row['actual_used_linear']."?fs?".$row['actual_used_medium'];

		 }

		

		 echo $option;


?>