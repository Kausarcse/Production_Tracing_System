

function Adding_Process_Route_For_PO_Form_Validation()
{


		if(document.getElementById("po_number").value=="select")
		{
      		alert("Please Select Pp Number");
      		document.getElementById("po_number").focus();
      		return false;
		}
		
		

} // End of function Form_Validation()

