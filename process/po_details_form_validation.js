

function PO_Details_Form_Validation()
{


		if(document.getElementById("po_number").value.trim()=="")
		{
      		alert("Please Provide Process Name");
      		document.getElementById("po_number").focus();
      		return false;
		}
		

}

