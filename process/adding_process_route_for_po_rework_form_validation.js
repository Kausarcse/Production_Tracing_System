

function adding_process_route_for_po_rework_Form_Validation()
{


		if(document.getElementById("po_number").value=="select")
		{
      		alert("Please Select PO Number");
      		document.getElementById("po_number").focus();
      		return false;
		}
		
		

} // End of function Form_Validation()

