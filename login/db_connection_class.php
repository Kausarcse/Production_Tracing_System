<?php

class DB_Connection_Class{

	 function connection()
	 {
		   global $con;
	
		  $con = mysqli_connect("localhost","root","","zzal");
		  //$con = mysqli_connect("localhost","root","O@s@t708s\$H\$a461","zzal_production_tracing");
		   /*$con = mysqli_connect("localhost","root","O@s@t708s\$H\$a461","accessories_work_order");*/
		
		  if (!$con)
		  {			
				die('Could not connect: ' . mysqli_error());	
		  }
		  
/*		  mysql_select_db("inventory_final_development", $con);
*/	  
	 }
 
 
   function disconnection()
   {
		global $con;
		mysqli_close($con);
   }
}
?>
