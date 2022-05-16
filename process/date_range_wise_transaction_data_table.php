<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();




$date = date("Y-m-d");


 $from_date=$_POST['from_date'];
 $to_date=$_POST['to_date'];

 $create_from_date=date_create($from_date);
 $new_from_date = date_format($create_from_date,"Y-m-d");

 $create_to_date=date_create($to_date);
 $new_to_date = date_format($create_to_date,"Y-m-d");



?>




   <div class="panel panel-default" id="table_load">


		<?php 


               $user_name = $_SESSION['user_name'];

				$sql_for_process_name = "SELECT DISTINCT user_access FROM user_login WHERE user_name = '$user_name'";

					$res_for_process_name = mysqli_query($con, $sql_for_process_name);

					$row2 = mysqli_fetch_assoc($res_for_process_name);
					$process_name = $row2['user_access'];




			if($user_name == 'rejowan' || $user_name == 'mijan')
			{
				?>
						<table id="datatable-buttons" class="table table-striped table-bordered" >
							<thead >
								 <tr>
								 	<th style="text-align: center;">SI</th>
									<th style="text-align: center;">Travel NO</th>
									<th style="text-align: center;">Production Date</th>
									<th style="text-align: center;">Delivery Date</th>
									<th style="text-align: center;">PO Number</th>
									<th style="text-align: center;">Customer Name</th>
									<th style="text-align: center;">Buyer Name</th>
									<th style="text-align: center;">PO Quantity</th>
									<th style="text-align: center;">Length</th>
									<th style="text-align: center;">Width</th>
									<th style="text-align: center;">Height</th>
									<th style="text-align: center;">Ply</th>
									<th style="text-align: center;">Actual Used Linear</th>
									<th style="text-align: center;">Actual Used Medium</th>
									<th style="text-align: center;">Process Quantity</th>
								 </tr>
							</thead>
							<tbody>
							<?php 
											
										
										$s1 = 1;
										$sql_for_color = "SELECT DISTINCT 
										tcdft.travel_card_creation_date, 
										tcdft.travel_card_id,
										tcdft.process_name,
										tcdft.process_quantity,
										tcdft.actual_used_linear,
										tcdft.actual_used_medium, 
										(tcdft.process_quantity - pd.carton_quantity) as balance_quantity,
										
										pc.product_delivery_date,
										pc.customer_name,
										pc.buyer_name, 
										pc.po_number,
										pc.po_quantity,

										pd.measurement_of_carton_length,
										pd.measurement_of_carton_width, 
										pd.measurement_of_cartoon_height, 
										pd.measurement_of_cartoon_ply,
										pd.carton_quantity 

										From person_wise_transactions tcdft 
										LEFT JOIN po_creation pc ON tcdft.po_id = pc.po_id 
										LEFT JOIN po_details pd ON tcdft.po_details_id = pd.po_details_id 
										WHERE tcdft.process_id = 'proc_1' 
										-- AND tcdft.recording_person_name = '$user_name' 
										AND ((date_format(str_to_date(tcdft.travel_card_creation_date, '%d-%m-%Y'), '%Y-%m-%d'))
										BETWEEN '$new_from_date' and '$new_to_date') ";

										$res_for_color = mysqli_query($con, $sql_for_color);

											while ($row = mysqli_fetch_assoc($res_for_color)) 
											{
							 ?>

							 <tr>
								<td><?php echo $s1; ?></td>
								<td><?php echo $row['travel_card_id']; ?></td>
								<td><?php echo $row['travel_card_creation_date']; ?></td>
								<td><?php echo $row['product_delivery_date'] ?></td>
								<td><?php echo $row['po_number'];?></td>
								<td><?php echo $row['customer_name']; ?></td>
								<td><?php echo $row['buyer_name']; ?></td>
								<td><?php echo $row['po_quantity']; ?></td>
								<td><?php echo $row['measurement_of_carton_length']; ?></td>
								<td><?php echo $row['measurement_of_carton_width']; ?></td>
								<td><?php echo $row['measurement_of_cartoon_height']; ?></td>
								<td><?php echo $row['measurement_of_cartoon_ply']; ?></td>
								<td><?php echo $row['actual_used_linear']; ?></td>
								<td><?php echo $row['actual_used_medium']; ?></td>
								<td><?php echo $row['process_quantity']; ?></td>

								
								
								<td><?php

								// if($row['balance_quantity']==0)
								// {
								// 	echo $row['balance_quantity'];
								// }
								// else{
								// 	echo '- '.$row['balance_quantity']; 

								// }
								 
								 
								 ?></td>
								
								<?php
											  
								$s1++;
												 }
								 ?> 
							 </tr>
						  </tbody>
					 </table>
				
				<?php
			}
			else
			{
				?>
				
					<table id="datatable-buttons" class="table table-striped table-bordered" >
						<thead >
							 <tr>
							 <th style="text-align: center;">SI</th>
							 <th style="text-align: center;">Travel NO</th>
							 <th style="text-align: center;">Production Date</th>
							 <th style="text-align: center;">Delivery Date</th>
							 <th style="text-align: center;">PO Number</th>
							 <th style="text-align: center;">Customer Name</th>
							 <th style="text-align: center;">Buyer Name</th>
							 <th style="text-align: center;">PO Quantity</th>
							 <th style="text-align: center;">Length</th>
							 <th style="text-align: center;">Width</th>
							 <th style="text-align: center;">Height</th>
							 <th style="text-align: center;">Ply</th>
							 <th style="text-align: center;">Process Quantity</th>
							 <th style="text-align: center;">Measurement Quantity</th>
							 </tr>
						</thead>
						<tbody>
						<?php 
										
									
									$s1 = 1;
									
									$sql_for_color = "SELECT DISTINCT 
									                  tcdft.travel_card_creation_date, 
										              tcdft.travel_card_id, 
													  tcdft.process_name, 
													  tcdft.process_quantity, 
										             (tcdft.process_quantity - pd.carton_quantity) as balance_quantity, 
													  pc.product_delivery_date, 
													  pc.customer_name, pc.buyer_name, 
										              pc.po_number, 
													  pc.po_quantity,

													  pd.measurement_of_carton_length, 
													  pd.measurement_of_carton_width, 
													  pd.measurement_of_cartoon_height, 
										              pd.measurement_of_cartoon_ply,
													  pd.carton_quantity 

													  From person_wise_transactions tcdft 
										              LEFT JOIN po_creation pc ON tcdft.po_id = pc.po_id 
										              LEFT JOIN po_details pd ON tcdft.po_details_id = pd.po_details_id 
										              WHERE tcdft.process_id = '$process_name' 
													  AND tcdft.recording_person_name = '$user_name' 
													  AND ((date_format(str_to_date(tcdft.travel_card_creation_date, '%d-%m-%Y'), '%Y-%m-%d'))
													  BETWEEN '$new_from_date' and '$new_to_date') ";

										$res_for_color = mysqli_query($con, $sql_for_color);

									  

										while ($row = mysqli_fetch_assoc($res_for_color)) 
										{

											

										
						 ?>

						 <tr>
							<td><?php echo $s1; ?></td>
							<td><?php echo $row['travel_card_id']; ?></td>
							<td><?php echo $row['travel_card_creation_date']; ?></td>
							<td><?php echo $row['product_delivery_date'] ?></td>
							<td><?php echo $row['po_number'];?></td>
							<td><?php echo $row['customer_name']; ?></td>
							<td><?php echo $row['buyer_name']; ?></td>
							<td><?php echo $row['po_quantity']; ?></td>
							<td><?php echo $row['measurement_of_carton_length']; ?></td>
							<td><?php echo $row['measurement_of_carton_width']; ?></td>
							<td><?php echo $row['measurement_of_cartoon_height']; ?></td>
							<td><?php echo $row['measurement_of_cartoon_ply']; ?></td>
							<td><?php echo $row['carton_quantity']; ?></td>
							<td><?php echo $row['process_quantity']; ?></td>
							
							<!-- <td>
								<?php

								if($row['balance_quantity']==0)
								{
									echo $row['balance_quantity'];
								}
								else{
									echo $row['balance_quantity']; 

								}
								 
								 
								 ?>
								 	
							</td> -->
							
							<?php
										  
							$s1++;
											 }
							 ?> 
						 </tr>
					  </tbody>
					 </table>
				
				<?php
			}
		?>
		
 
        </div> <!-- End of <div class="form-group form-group-sm" -->
        
         

     





