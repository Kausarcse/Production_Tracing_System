<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

?>


<style>

.form-group		/* This is for reducing Gap among Form's Fields */
{

	margin-bottom: 5px;

}

</style>





<div class="col-sm-12 col-md-12 col-lg-12">
    <div id="for_all_page_load">
		<div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

				<div class="panel-heading" style="color:#191970;"><b>Today Transection List</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

		</div> <!-- End of <div class="panel panel-default"> -->
        






   <div class="panel panel-default" id="table_load">


		<?php 
			if($user_name == 'rejowan' || $user_name == 'mijan')
			{
				?>
						<table id="datatable-buttons" class="table table-striped table-bordered" >
							<thead >
								 <tr>
								 <th style="text-align: center;">SI</th>
								 <th style="text-align: center;">Travel Card ID</th>
								 <th style="text-align: center;">PO ID</th>
								 <th style="text-align: center;">Process Name</th>
								 <th style="text-align: center;">Actual Ratio</th>
								 <th style="text-align: center;">Actual Roll Size</th>
								 <th style="text-align: center;">Actual Used Linear</th>
								 <th style="text-align: center;">Actual Used Medium</th>
								 <th style="text-align: center;">Process Quantity</th>
								 <th style="text-align: center;">Person</th>
								 </tr>
							</thead>
							<tbody>
							<?php 
											$today_date = date("d-m-Y");
											$s1 = 1;
											$sql_for_color = "SELECT DISTINCT travel_card_details_for_transactions.* FROM travel_card_details_for_transactions, user_login
															  WHERE travel_card_details_for_transactions.travel_card_creation_date = '$today_date' 
															  ORDER BY ID DESC";

											$res_for_color = mysqli_query($con, $sql_for_color);

											while ($row = mysqli_fetch_assoc($res_for_color)) 
											{
							 ?>

							 <tr>
								<td><?php echo $s1; ?></td>
								<td><?php echo $row['travel_card_id']; ?></td>
								<td>
									<?php 
										$po_id = $row['po_id']; 
										$sql_for_po = "SELECT * FROM po_creation WHERE po_id = '$po_id'";

										$res_for_po = mysqli_query($con, $sql_for_po);

										$row2 = mysqli_fetch_assoc($res_for_po);
										echo $row2['po_number'];
									?>
								</td>
								<td><?php echo $row['process_name']; ?></td>
								<td><?php echo $row['actual_ratio']; ?></td>
								<td><?php echo $row['actual_roll_size']; ?></td>
								<td><?php echo $row['actual_used_linear']; ?></td>
								<td><?php echo $row['actual_used_medium']; ?></td>
								<td><?php echo $row['process_quantity']; ?></td>
								<td><?php echo $row['recording_person_name']; ?></td>
								
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
							 <th style="text-align: center;">Travel Card ID</th>
							 <th style="text-align: center;">PO ID</th>
							 <th style="text-align: center;">Process Name</th>
							 <th style="text-align: center;">Process Quantity</th>
							 <th style="text-align: center;">Person</th>
							 </tr>
						</thead>
						<tbody>
						<?php 
										$today_date = date("d-m-Y");
										$s1 = 1;
										$sql_for_color = "SELECT DISTINCT travel_card_details_for_transactions.* FROM travel_card_details_for_transactions, user_login
														  WHERE travel_card_details_for_transactions.travel_card_creation_date = '$today_date' 
														  AND travel_card_details_for_transactions.recording_person_name = '$user_name' 
														  ORDER BY ID DESC";

										$res_for_color = mysqli_query($con, $sql_for_color);

										while ($row = mysqli_fetch_assoc($res_for_color)) 
										{
						 ?>

						 <tr>
							<td><?php echo $s1; ?></td>
							<td><?php echo $row['travel_card_id']; ?></td>
							<td>
								<?php 
									$po_id = $row['po_id']; 
									$sql_for_po = "SELECT * FROM po_creation WHERE po_id = '$po_id'";

									$res_for_po = mysqli_query($con, $sql_for_po);

									$row2 = mysqli_fetch_assoc($res_for_po);
									echo $row2['po_number'];
								?>
							</td>
							<td><?php echo $row['process_name']; ?></td>
							<td><?php echo $row['process_quantity']; ?></td>
							<td><?php echo $row['recording_person_name']; ?></td>
							
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
        
         

      </div>  <!-- End of <div class="panel panel-default"> -->
    </div>  <!-- End of <div id="for_all_page_load"> -->
</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->





