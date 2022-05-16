<?php
session_start();
include("../login/session.php");
include('../login/db_connection_class.php');

$user_type=$_SESSION['user_type'];


$obj = new DB_Connection_Class();
$obj->connection();
?>

<script>
function script()
{
	$(document).ready(function() {
                       
                        var table = $('#table_for_travel_card').DataTable( {
                            scrollY:        "500px",
                            scrollX:        true,
                            scrollCollapse: true,
                            paging:         false,
                            columnDefs: [
                                { width: '0%', targets: 0 }
                            ],
                            dom: 'Bfrtip',
                            buttons: [
                                 'csv', 'excel', 'pdf', 'print'
                            ],
                            fixedColumns:   {
                                                leftColumns: 2,
                                                rightColumns: 1
                                            }

                        } );
                    } );
}


function script_for_table()
{

  $('#datatable-buttons').ddTableFilter();



}



function travel_card_report()
{
	
			
			//alert('Here');
			//innerHTML=splitted_data[3];
			var travel_card_id = document.getElementById('travel_card_id').value;
			var version_value = document.getElementById('version_number').value;
			var splitted_version_value = version_value.split("?fs?");
			var version_name = splitted_version_value[0];
			var color = splitted_version_value[1];
			var version_id = splitted_version_value[4];
			var design = document.getElementById("design").value
			var process_name = document.getElementById("process").value
			//alert(travel_card_id+" "+version_number);
            $.ajax({
			 		url: 'customized_report/returning_summary_of_version_for_partial_test.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: {travel_card_id_value:travel_card_id,version_number_value:version_name,color_value:color,design:design,process_name:process_name,version_id:version_id},
			 		      
			 		success: function( data, textStatus, jQxhr )
			 		{       
			 			    
                           
			 				document.getElementById('display_summary_result').innerHTML=data;


			 				

							
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{       
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			}); // End of $.ajax({
	
	
}


function searching_for_teavel_card_summary(i)
{
	         var travel_card_id= i;
	         var user_type= document.getElementById('user_type').value;
			
		
            $.ajax({
			 		url: 'travel_card_report/returning_details_of_travel_card.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: {travel_card_id_value:travel_card_id, user_type:user_type},
			 		
			 		      
			 		success: function( data, textStatus, jQxhr )
			 		{       
			 			    


			 				document.getElementById('details_based_on_travel_card_div').innerHTML=data;
			 				script();
			 				

			 				/*$('#travel_card_id_color_change').css({ 'color': 'red', 'font-size': '150%' });*/


			 				

							
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{       
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			}); // End of $.ajax({
	
	
}


function sending_data_for_delete_travel_card_with_process(value_for_travel_card)
{      
	     //var value_for_travel_card = document.getElementById('value_for_travel_card').value;  

	    //alert(value_for_travel_card);
	     	 $.ajax({
			 		url: 'travel_card_report/travel_card_for_process_deleting.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: {value_for_travel_card:value_for_travel_card},
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);

			 				
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({

}

 function report_view(get_all_data)
 {
      
      

       $('#print').hide();
       $('#element_for_first_div').hide();

       

       var split_data=get_all_data.split('?fs?');

       var process_id=split_data[3];
       
      
       if(process_id=='proc_16')
       {
          $('#element').load("report/pass_fail_report_for_all_test.php?all_data="+encodeURIComponent(get_all_data));
       }

       else
       {
       	  $('#element').load("report/pass_fail_report_for_partial_test.php?all_data="+encodeURIComponent(get_all_data));
       }
       
      
       


 }//End of function sending_data_for_test_report()



 /***************************************************** FOR AUTO COMPLETE********************************************************************/

$('.for_auto_complete').chosen();


/***************************************************** FOR AUTO COMPLETE********************************************************************/


</script>

<script>
  $(document).ready(function() {
    // Setup - add a text input to each footer cell
    $('#datatable-buttons_for_version_details thead tr').clone(true).appendTo( '#datatable-buttons_for_version_details thead' );
    $('#datatable-buttons_for_version_details thead tr:eq(1) th').each( function (i) {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );


 
        $( 'input', this ).on( 'keyup change', function () {
            if ( table.column(i).search() !== this.value ) {
                table
                    .column(i)
                    .search( this.value )
                    .draw();
            }
        } );
    } );
 
    var table = $('#datatable-buttons_for_version_details').DataTable( {
       scrollY:        "300px",
        scrollX:        true,
        scrollCollapse: true,
        paging:         false,
        columnDefs: [
            { width: '20%', targets: 0 }
        ],
        fixedColumns: true
    } );
} );
</script>    



<script>

function generate_pdf(){
 

   var printContents = document.getElementById('element').innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
</script>



 <div class="col-sm-12 col-md-12 col-lg-12">
       <div class="panel panel-default">

       	   <body id="target">

       	   <div id="element_for_first_div">
           	

                <div class="panel-heading" style="color:#191970;"><b>Report</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

                   <form class="form-horizontal" action="" style="margin-top:10px;" name="travel_card_report_for" id="travel_card_report_for">


                        <input id="user_type" value="<?php echo $user_type?>" hidden>

						<div class="form-group form-group-sm" id="form-group_for_travel_card_id" id="form_customized_report">
						<label class="control-label col-sm-4" for="travel_card_id" style="margin-right:0px; color:#00008B;">Travel Card No:</label>
							<div class="col-sm-5">
								<select  class="form-control for_auto_complete" id="travel_card_id" name="travel_card_id" onchange="searching_for_teavel_card_summary(this.value)">
											<option select="selected" value="select">Select Travel Card No</option>
											<?php 
												 $sql = 'select travel_card_id from `travel_card_details` order by row_id asc';
												 $result= mysqli_query($con,$sql) or die(mysqli_error());
												 while( $row = mysqli_fetch_array( $result))
												 {

													 echo '<option value="'.$row['travel_card_id'].'">'.$row['travel_card_id'].'</option>';

												 }

											 ?>
								</select>
								
							</div>
						</div> <!-- End of <div class="form-group form-group-sm" id="form-group_for_travel_card_id"> -->


							

						

			  </div>   <!-- <div id="element_for_first_div"> -->


			 <div id="element">
						
					
						
						<div class="form-group form-group-sm"  id="details_based_on_travel_card_div" >
						   
							<!-- This is Display Section. --> 

							<div id="details_based_on_travel_card_div" class="col-sm-12" align="center" style=" margin-top:0px;"> </div>
							
							   
										 
						</div> <!-- End of <div id="summary_result"> -->

            </div> <!-- end of div element -->
					
                 </form>

                
               
                

              </div>

             </div>   <!-- End of <div class="panel panel-default"> -->


            <!--  <button class="btn btn-success"><a id="downloadLink" onclick="exportF(this)">Export to excel</a></button> -->
         	 <button id="print" class="btn btn-primary align-center" name="print" onclick="generate_pdf()">Print</button>

     </div>   <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->



    <!--  	For export to excel -->

          
