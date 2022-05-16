

function Process_Wise_TRAVEL_CARD_Form_Validation_FOR_BEFORE_AFTER()
{    

	 
			  



	    if(document.getElementById("before_process_quantity").value.trim()=="")
									{   
							                       
                                        var result= document.getElementById("before_process_name").value
							      		alert(result+" Process is Not Given Yet");
											      		
											      		document.getElementById("before_process_quantity").focus();
											      		return false;
							      		
									}




		if(document.getElementById("process_quantity").value.trim()=="")
									{
							      		alert("Please Select Process Quantity");
							      		document.getElementById("process_quantity").focus();
							      		
							      		return false;
									}
		

}

