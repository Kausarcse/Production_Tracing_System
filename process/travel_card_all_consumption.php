<div class="form-group form-group-sm" >
				      

					      <div class="col-sm-3 text-center">
					         <label class="control-label"  style="color:#00008B;"><span id="for_consumption">Consumption (Kg)</span> </label>
					      </div>
					       
					       <div class="col-sm-1 text-center">
					               
					                <input class="form-control input-sm" type="text" id="liner_consumption_calc" name="liner_consumption_calc" value="" >

					           </div>

					       

					           <div class="col-sm-1 text-center">
					                <input class="form-control input-sm" type="text" id="media_consumption_calc" name="media_consumption_calc" value="" >
					             
					         </div>
					            
					             
					          <div class="col-sm-1 text-center">
					               <input class="form-control input-sm" type="text" id="sqm_consumption_calc" name="sqm_consumption_calc" value="" >
					              
					           </div>
					            
					                 <!--Add Input/Select Field Here No Dive Only Input/Select/Radio Button/Checkbox/Textarea -->
					              
					          <div class="col-sm-1" for="total_consumption">
                                    

                                     <input class="form-control input-sm" type="text" id="total_consumption" name="total_consumption" value="" >
						          	
					          </div>

					         
				                
</div><!-- End of <div class="form-group form-group-sm" measurement_of_carton-->


<script>


	 function consumption_calc(){

	 	     var cutter_size= document.getElementById("cutter_size").value;
	         var roll_size= document.getElementById("roll_size").value;
	         var board_quantity= document.getElementById("board_quantity").value;
	        
	          
            //sqm Calculation
	         var sqm_consumption_calc= ((parseFloat(cutter_size) * (parseFloat(roll_size) *25.4 ) / 1000000 ) * parseFloat(board_quantity));    
            
             document.getElementById("sqm_consumption_calc").value=sqm_consumption_calc.toFixed(2);
	        
             //liner_consumption_calc Calculation 
	         var paper_type_linear= document.getElementById("paper_type_linear").value;
      		 var paper_type_linear_1= document.getElementById("paper_type_linear_1").value;
             
             if(paper_type_linear=="")
      		 {
      		 	paper_type_linear=0;


      		 }

      		 if(paper_type_linear_1=="")
      		 {
      		 	paper_type_linear_1=0;


      		 }
      		 

      		 //var liner_consumption_calc=((parseFloat(paper_type_linear)+parseInt(paper_type_linear_1) ) * .05 )+( parseFloat(paper_type_linear)+parseInt(paper_type_linear_1) )/1000  * parseFloat(sqm_consumption_calc) ;

      		  // var liner_consumption_calc=(((parseFloat(paper_type_linear)+parseInt(paper_type_linear_1)) *.05 )+(parseFloat(paper_type_linear)+parseInt(paper_type_linear_1)))/1000*parseFloat(sqm_consumption_calc);


      		  var liner_consumption_calc=((parseFloat(paper_type_linear)+parseInt(paper_type_linear_1)) ) /1000*parseFloat(sqm_consumption_calc);

        	document.getElementById("liner_consumption_calc").value=liner_consumption_calc.toFixed(2);



        	//liner_consumption_calc Calculation 
	         var paper_type_medium= document.getElementById("paper_type_medium").value;
      		 var paper_type_medium_1= document.getElementById("paper_type_medium_1").value;
      		 var paper_type_medium_2= document.getElementById("paper_type_medium_2").value;  
            
            
             
      		 if(paper_type_medium=="")
      		 {
      		 	paper_type_medium=0;


      		 }

      		 if(paper_type_medium_1=="")
      		 {
      		 	paper_type_medium_1=0;
      		 	 
      		 }

      		 if(paper_type_medium_2=="")
      		 {
      		 	paper_type_medium_2=0;
      		 }
             
             

      		 //var media_consumption_calc= (((parseFloat(paper_type_medium)* 0.45 )+parseFloat(paper_type_medium)))/1000*parseFloat(sqm_consumption_calc);

			 var media_consumption_calc=(( ((parseFloat(paper_type_medium)+parseFloat(paper_type_medium_2))* 0.425 ) + (parseFloat(paper_type_medium)+parseFloat(paper_type_medium_2) + parseFloat(paper_type_medium_1) ) ) / 1000 )  *  parseFloat(sqm_consumption_calc)  ;




        	document.getElementById("media_consumption_calc").value=media_consumption_calc.toFixed(2);


        	 //total Consumption
        	var total_consumption= parseFloat(liner_consumption_calc) + parseFloat(media_consumption_calc);

        	document.getElementById("total_consumption").value=total_consumption.toFixed(2);

	 }
	       

	
	
</script>