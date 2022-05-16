

function Process_Wise_TRAVEL_CARD_Form_Validation()
{


		if(document.getElementById("before_process_quantity").value.trim()=="")
		{
      		alert("Please Before Process Quantity");
      		document.getElementById("before_process_quantity").focus();
      		return false;
		}
		
		

}

