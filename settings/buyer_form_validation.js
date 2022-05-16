

function buyer_Form_Validation()
{


		if(document.getElementById("buyer_name").value.trim()=="")
		{
      		alert("Please Provide buyer Name");
      		document.getElementById("buyer_name").focus();
      		return false;
		}
		else if(document.getElementById("buyer_address").value.trim()=="")
		{
      		alert("Please Provide buyer Address");
      		document.getElementById("buyer_address").focus();
      		return false;
		}
		else if(document.getElementById("country_of_origin").value=="select")
		{
      		alert("Please Select Country Of Origin");
      		document.getElementById("country_of_origin").focus();
      		return false;
		}
		

}

