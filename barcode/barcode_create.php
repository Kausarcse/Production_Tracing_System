<?php 
	include('../db_znzqc_connection_class.php');
	$obj2 = new DB_Connection_Class();
	$obj2->connection();

  include('../db_connection_class.php');
  $obj = new DB_Connection_Class_Main();
  $obj->connection();

	$id = $_GET['id'];
	$pp_number = $_GET['pp_number'];
	//$customer_name = $_GET['customer_name'];
	$customer_name = $_GET['customer_name'];
  $customer_id = $_GET['customer_id'];
  $work_order_number = $_GET['work_order_number'];
	$construction = $_GET['construction'];
	$finish_width_in_inch = $_GET['finish_width_in_inch'];
	$roll_no = $_GET['roll_no'];
	$kgs = $_GET['kgs'];
	$composition = $_GET['composition'];
	$shade = $_GET['shade'];
	$weave = $_GET['weave'];
	$length = $_GET['length'];
	$finished_type = $_GET['finished_type'];


  $sql = "SELECT MAX(id) as max_id FROM roll_information_barcode";
  $result = mysqli_query($con, $sql) or die(mysqli_error($con));
  $row = mysqli_fetch_array($result);
  echo $max_id = $row['max_id'] + 1;


  // if ($max_id == '') 
  // {
  //    $max_id = 1;
  // }
  // else
  // {
  //     $row = mysqli_fetch_array($result);
  //     $max_id = $row['max_id'] + 1;
  //     $row = mysqli_fetch_array($result);
  //         $fetch_length = $row['on_hand_stock'];
  // }
	
?>

<div class="col-sm-12 col-md-12 col-lg-10">
       <div class="panel panel-default">
            <div class="row">
                <div class="col-md-2">
                      <img  src="img/zz_logo.png" alt="..." class="control-label img-rounded" style="width: 80px; height:50px; margin-top: 36px; background: #ffffff;">
                      <input type="hidden" name="pp_number" id="pp_number" value="<?php echo $pp_number; ?>">
                      <input type="hidden" name="id" id="id" value="<?php echo $max_id; ?>">
                </div>  
                <div class="col-md-10 text-center">
                        <label label  for="name"><h3>ZABER & ZUBAIR FABRICS LTD. (FASHION)</h3></label><br>
                        <label label  for="name">Fashion Dyeing (Unit-1)</label><br>
                        <label label  for="name">FINAL INSPECTION</label>
                </div>  
            </div>

            <div class="row">
                  <div class="col-md-2">
                    
                  </div>
                  <div class="col-md-10 text-center">
                        <img  type='image' id="barcode"></img>

                              <script>
                                    var pp_number = document.getElementById('pp_number').value;
                                    var id = document.getElementById('id').value;
                                    var barcode_code = pp_number +'_'+ id;
                                    JsBarcode("#barcode", barcode_code, {
                                          height: 20

                                    });
                              </script>
                  </div>
            </div>

            <div class="row">
                  <div class="col-md-2">
                        
                  </div>
                  <div class="col-md-10 text-left">
                        <label  for="name"><b>Date:</b>  <?php echo date("Y-m-d"); ?></label> <br>

                        <label  for="name"><b>PP No.: </b><?php echo $pp_number; ?></label> <br>

                        <label  for="name"><b>Roll No.: </b> <?php echo $roll_no; ?></label> <br>

                        <label  for="name"><b>Work Order Number: </b> <?php echo $work_order_number; ?></label> <br>

                        <label  for="name"><b>Kgs:</b>  <?php echo $kgs; ?></label> <br>

                        <label  for="name"><b>Customer: </b> <?php echo $customer_name; ?></label> <br>

                        <label  for="name"><b>Shade: </b> <?php echo $shade; ?></label> <br>

                        <label  for="name"><b>Construction: </b>  <?php echo $construction; ?></label> <br>

                        <label  for="name"><b>Composition: </b> <?php echo $composition; ?></label> <br>

                        <label  for="name"><b>Weave: </b> <?php echo $weave; ?></label> <br>

                        <label  for="name"><b>Length:</b> <?php echo $length; ?></label> <br>

                        <label  for="name"><b>Finished Width: </b> <?php echo $finish_width_in_inch; ?></label> <br>

                        <label  for="name"><b>Finished Type: </b>  <?php echo $finished_type; ?></label> <br>
                  </div>
            </div>
       </div>

	   <div class="form-group form-group-sm">
                <div class="col-sm-offset-3 col-sm-5">

                    <?php 
                        $value= $pp_number."?fs?".$customer_id."?fs?".$construction."?fs?".$finish_width_in_inch."?fs?".$roll_no."?fs?".$kgs."?fs?".$composition."?fs?".$shade."?fs?".$weave."?fs?".$length."?fs?".$finished_type."?fs?".$customer_name."?fs?".$work_order_number."?fs?".$id; 
                    ?> 
                  
                    <a target="_blank" href="all_it_asset_forms/barcode/pdf_file_for_barcode_create.php?pp_id=<?php echo $value; ?>">
                      <button type="button" id="pdf_file_for_partial_test_trf_washing_lab" name="pdf_file_for_partial_test_trf_washing_lab"  class="btn btn-success btn-xs">Barcode Generation</button>
                    </a>               
                </div>
          </div>

</div>   <!-- End of <div class="panel panel-default"> -->

