<?php
error_reporting(0);
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


$local_date=date_default_timezone_set('Asia/Dhaka');

$date = date("Y-m-d");


$user_name=$_SESSION['user_name'];


 $all_data=$_GET['all_data'];

$split_all_data=explode("?fs?", $all_data);


$po_no=$split_all_data[1];
// echo $po_no;
?>


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
function scripting_table()
{

	$(document).ready(function() {
                       
                        var table = $('#table_for_result').DataTable( {
                            scrollY:        "500px",
                            scrollX:        true,
                            scrollCollapse: true,
                            paging:         false,
                            columnDefs: [
                                { width: '0%', targets: 0 }
                            ],
                            // dom: 'Bfrtip',
                            // buttons: [
                            //      'csv', 'excel', 'pdf', 'print'
                            // ],
                            fixedColumns:   {
                                                leftColumns: 2,
                                                rightColumns: 1
                                            }

                        } );
                    } );
}

function get_po_wise_summary()
    { 
        //alert(document.getElementById('from_date').value);

         var url_encoded_form_data = $("#po_wise_summary").serialize(); //This will read all control elements value of the form 
     
// alert(url_encoded_form_data);

             $.ajax({
                    url: 'travel_card_report/summary_report_with_report.php',
                    dataType: 'text',
                    type: 'post',
                    contentType: 'application/x-www-form-urlencoded',
                    data: url_encoded_form_data,
                    beforeSend: function() {
                        $("#loading-image").show();
                    },
                    success: function( data, textStatus, jQxhr )
                    {
                           $("#loading-image").hide();
                            //alert(data);



                             //document.getElementById('machine_wise_summary_full_div').style.display="none";
                          
                            document.getElementById('po_wise_summary_filtered_div').innerHTML=data;
                            $("#excel_button").show();
                            scripting_table();


                            
                    },
                    error: function( jqXhr, textStatus, errorThrown )
                    {
                            //console.log( errorThrown );
                            alert(errorThrown);
                    }
             }); // End of $.ajax({

       }//End of if(validate != false)


 /***************************************************** FOR AUTO COMPLETE********************************************************************/
$(document).ready(function() {
$('.for_auto_complete_po').chosen();

 } );
/***************************************************** FOR AUTO COMPLETE********************************************************************/

</script>

<div class="col-sm-12 col-md-12 col-lg-12">

	  <div class="panel panel-default" id="div_table">
    <div id="element">
        <div class="form-group form-group-sm" id="div_machine_wise_production_summary_for_folding">
            <form class="form-horizontal" action="" method="POST" name="po_wise_summary" id="po_wise_summary">

                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td style="text-align: center; font-size: 25px; color: black; font-weight: bold; border: 1px solid">
                                Produciton Summary
                            </td>
                            
                        </tr>
                    </thead>
                </table>

                 <div class="form-group form-group-sm" id="form-group_for_feom_date" style="margin-right:0px; color:#00008B;">
                            <label class="control-label col-sm-4" for="from_date"> Date :</label>
                             <div class="col-sm-3" style="padding-right: 0">

                             <input type="text" class="form-control" id="from_date" name="from_date"> 
                           

                            </div>


                            <div class="col-sm-3" style="padding-right: 0">


                            <input type="text" id="to_date" class="form-control" name="to_date">


                           </div>

                            <div class="col-sm-1" style="padding-left: 0">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                </div>

                 

 



                      <script>
                          $( function() {
                            //$( "#from_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
                            $( "#from_date" ).datepicker({ dateFormat: 'dd-mm-yy' });
                            
                          } );

                          $( function() {
                            $( "#to_date" ).datepicker({ dateFormat: 'dd-mm-yy' });


                          } );
                      </script>


                     <div class="col-sm-5" style="padding-top: 8px;">
                        <button name="submit" type="button" class="btn btn-info" onclick="get_po_wise_summary()">Filter</button> 

                        <br/>

                        <br/>
                     </div>


                   
          <div id="loading">
              <img id="loading-image" src="travel_card_report/loading.gif" style="display:none;"/>
          </div>       

         <div id="po_wise_summary_filtered_div" > 

         </div>

        <div id="machine_wise_summary_full_div" class="table-responsive">

                

               
            
            </div>  <!-- End of   <div id="machine_wise_summary_full_div"></div> -->
            </form>
            <table class="table">
                    <thead>
                        <tr>
                            <td style="text-align: center; font-size: 15px; color: red; font-weight: bold; padding: 0;">
                            <!-- ** All Quantity is in cm. ** -->  <button id="excel_button" class="btn btn-success" style="display: none;"><a id="downloadLink" onclick="exportF(this)" style="color: white;">Export to excel</a></button>
                            </td>
                            
                        </tr>
                    </thead>
                </table>
            <!-- <label for="" style="text-align: center;" style="border: brown;">** All Quantity is in meter. **  </label> -->
        </div>  <!-- <div class="form-group form-group-sm" id="div_machine_wise_production_summary_for_folding"> -->
    
    </div>
        <!-- <div class="col-sm-6" style="padding-left: 800px;">
          <button id="print" class="btn btn-primary" name="print" onclick="generate_pdf_for_po_wise_production_summary(this)">Print</button>
        </div> -->
        
    </div>  <!-- End of <div class="panel panel-default"> -->
    
</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->



<script>

  function exportF(elem) {
    var table = document.getElementById("po_wise_summary_filtered_div");
    var html = table.innerHTML;
    var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
    elem.setAttribute("href", url);
    elem.setAttribute("download", "po_wise_production_report.xls"); // Choose the file name
    return false;
}

function generate_pdf_for_po_wise_production_summary(){
    
     let nbPages = 1;
    let sourceHtml = $('#element');

    
    html2pdf(sourceHtml[0], {
      margin: 1,
      filename: 'machine_wise_production_summary.pdf',
      image: { type: 'jpeg', quality: 0.98 },
     
      html2canvas: { dpi: 600, letterRendering: true, width: 2000, height: 3000  },
      jsPDF: { unit: 'pt', format: 'a4', orientation: 'portrait' }
    });  
}
</script>