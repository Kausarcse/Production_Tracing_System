<div><label class="form-control">Product Description</label> </div>

                                 <div class="form-group form-group-sm">
             


                                        <div class="col-sm-3 text-center">
                                            <label for="test_name_and_method" style="font-size:12px; color:#008000;"></label>
                                            
                                              
                                        </div>
                                     
                                         <div class="col-sm-1 text-center">
                                              <label for="description_or_type" style="font-size:12px; color:#008000;">Length</label>
                                              
                                         </div>

                                       <div class="col-sm-1 text-center">
                                            <label for="value" style="font-size:12px; color:#008000;">Width</label>
                                       </div>
                                         
                                        <div class="col-sm-1 text-center">
                                              <label for="value" style="font-size:12px; color:#008000;">Height</label>
                                              
                                        </div>
                                      
                                       
                                         
                                       <div class="col-sm-1 text-center">
                                             <label for="math_op_value" style="font-size:12px; color:#008000;">Ply</label>
                                                
                                       </div>
                                            
                                               
                                        

                                  </div>


                    <div id="div_measurement_of_carton" >


                        <div class="form-group form-group-sm" >
                      

                          <div class="col-sm-3 text-center">
                             <label class="control-label"  style="color:#00008B;"><span id="for_measurement_of_carton">Measurement of Carton (cm)</span> </label>
                          </div>
                           
                           <div class="col-sm-1 text-center">
                                   
                                    <input class="form-control input-sm" type="text" id="measurement_of_carton_length" name="measurement_of_carton_length" onchange="calculate_width_wise_data(this.value); calculate_height_wise_data(this.value)">

                               </div>

                           

                               <div class="col-sm-1 text-center">
                                    <input class="form-control input-sm" type="text" id="measurement_of_carton_width" name="measurement_of_carton_width" onchange="calculate_width_wise_data(this.value); calculate_height_wise_data(this.value)">
                                 
                             </div>
                                
                                 
                              <div class="col-sm-1 text-center">
                                   <input class="form-control input-sm" type="text" id="measurement_of_cartoon_height" name="measurement_of_cartoon_height"  onchange="calculate_width_wise_data(this.value); calculate_height_wise_data(this.value)">
                                  
                               </div>
                                
                                   
                                  
                              <div class="col-sm-1" for="measurement_of_cartoon_ply">

                                    <select  class="form-control" id="measurement_of_cartoon_ply" name="measurement_of_cartoon_ply">
                                                <option select="selected" value="select">Select No of Ply</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="5">5</option>
                                                <option value="7">7</option>
                                                <option value="9">9</option>
                                    </select>

                                
                              </div>

                             
                                
                       
                       </div>

                    </div> 





                   <div class="form-group form-group-sm">
             
                                     


                                        <div class="col-sm-3 text-center">
                                            <label for="test_name_and_method" style="font-size:12px; color:#008000;"></label>
                                            
                                              
                                        </div>
                                     
                                         <div class="col-sm-1 text-center">
                                              <label for="papaer_type_linear" style="font-size:12px; color:#008000;">Liner</label>
                                              
                                         </div>

                                       <div class="col-sm-1 text-center">
                                            <label for="paper_type_medium" style="font-size:12px; color:#008000;">Medium</label>
                                       </div>
                                       <div class="col-sm-1 text-center">
                                            <label for="paper_type_medium_1" style="font-size:12px; color:#008000;">Medium</label>
                                       </div>

                                       <div class="col-sm-1 text-center">
                                            <label for="paper_type_medium_2" style="font-size:12px; color:#008000;">Medium</label>
                                       </div>
                                         
                                        <div class="col-sm-1 text-center">
                                              <label for="papeer_type_linear_1" style="font-size:12px; color:#008000;">Liner</label>
                                              
                                        </div>
                                      
                                         
                                         
                                      
                                            
                                               
                                        

                 </div>



                 <div id="div_paper_type" >


                        <div class="form-group form-group-sm" >
                      

                           <div class="col-sm-3 text-center">
                             <label class="control-label"  style="color:#00008B;"><span id="for_paper_type">Paper Type</span> </label>
                           </div>
                           
                           <div class="col-sm-1 text-center">
                                   
                                    <input class="form-control input-sm" type="text" id="paper_type_linear" name="paper_type_linear" >

                               </div>

                           

                           <div class="col-sm-1 text-center">
                                    <input class="form-control input-sm" type="text" id="paper_type_medium" name="paper_type_medium" >
                                 
                           </div>

                           <div class="col-sm-1 text-center">
                                    <input class="form-control input-sm" type="text" id="paper_type_medium_1" name="paper_type_medium_1" >
                                 
                           </div>

                           <div class="col-sm-1 text-center">
                                    <input class="form-control input-sm" type="text" id="paper_type_medium_2" name="paper_type_medium_2" >
                                 
                           </div>
                                
                                 
                           <div class="col-sm-1 text-center">
                                   <input class="form-control input-sm" type="text" id="paper_type_linear_1" name="paper_type_linear_1" >
                                  
                           </div>
                                
                                   
                       
                       </div>

                 </div>





                        <div id="div_flute_type" >


                                <div class="form-group form-group-sm" >
                              

                                  <div class="col-sm-3 text-center">
                                     <label class="control-label"  style="color:#00008B;"><span id="for_flute_type">Flute Type</span> </label>
                                  </div>
                                   
                                     <div class="col-sm-1 text-center">
                                           
                                            <label class="control-label checkbox-inline" for="flute_type" >   

                                               <input type="checkbox" id="flute_type" name="flute_type[]" value="A Flute">
                                               <strong>A Flute</strong>
                                               </label> 

                                    </div>


                                    <div class="col-sm-1 text-center">
                                               <label class="control-label checkbox-inline" for="flute_type" >   
                                                     
                                               <input type="checkbox" id="flute_type" name="flute_type[]" value="B Flute">
                                               <strong>B Flute</strong>
                                               </label>  

                                    </div>


                                    <div class="col-sm-1 text-center">

                                               <label class="control-label checkbox-inline" for="flute_type" >   
                                                     
                                               <input type="checkbox" id="flute_type" name="flute_type[]" value="C Flute">
                                               <strong>C Flute</strong>
                                               </label> 
                                    </div>

                                    <div class="col-sm-1 text-center">

                                               <label class="control-label checkbox-inline" for="flute_type" >   
                                                     
                                               <input type="checkbox" id="flute_type" name="flute_type[]" value="E Flute">
                                               <strong>E Flute</strong>
                                               </label> 
                                    </div>


                                    <div class="col-sm-1 text-center">

                                               <label class="control-label checkbox-inline" for="flute_type" >   
                                                     
                                               <input type="checkbox" id="flute_type" name="flute_type[]" value="F Flute">
                                               <strong>F Flute</strong>
                                               </label>  

                                    </div>

                                   

                               
                               </div>

                            </div>




                         <div id="div_printing_status" >


                            <div class="form-group form-group-sm" >
                          

                              <div class="col-sm-3 text-center">
                                 <label class="control-label"  style="color:#00008B;"><span id="for_printing_status">Printing Status</span> </label>
                              </div>
                               
                                 <div class="col-sm-1 text-center">
                                       
                                        <input type="radio" id="printing_status" name="printing_status" value="Printed">
                                        <label for="Printed">Printed</label>

                                </div>


                                <div class="col-sm-2 text-center">
                                           <input type="radio" id="printing_status" name="printing_status" value="Non Printed">
                                             <label for="Non Printed">Non Printed</label> 

                                </div>



                           
                           </div>

                     </div> 




                        <div id="div_dye_cutting" >


                                <div class="form-group form-group-sm" >
                              

                                  <div class="col-sm-3 text-center">
                                     <label class="control-label"  style="color:#00008B;"><span id="for_dye_cutting">Die Cutting</span> </label>
                                  </div>
                                   
                                     <div class="col-sm-1 text-center">
                                           
                                            <input type="radio" id="dye_cutting" name="dye_cutting" value="Die Cutting">
                                            <label for="Die Cutting">Die Cutting</label>

                                    </div>


                                    <div class="col-sm-1 text-center">
                                               <input type="radio" id="dye_cutting" name="dye_cutting" value="Non Die Cutting">
                                                 <label for="Non Die Cutting">Non Die Cutting</label> 

                                    </div>



                               
                               </div>

                        </div> 
 
             

             <div><label class="form-control">Process Description</label> </div>





                         <div id="div_product_description" >


                                    <div class="form-group form-group-sm" >
                                  

                                            <div class="col-sm-3 text-center">
                                             <label class="control-label"  style="color:#00008B;"><span id="for_carton_quantity">Carton Quantity (Pcs):</span> </label>
                                            </div>
                                           
                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="carton_quantity" name="carton_quantity"  onchange="total_board_Quantity(this.value)">

                                            </div>


                                            <div class="col-sm-2 text-center">
                                                     <label  class="control-label"  style="color:#00008B;"><span id="for_ratio">Ratio :</span> </label>

                                            </div>

                                            <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="ratio" name="ratio">

                                            </div>


                                            <div class="col-sm-2 text-center">
                                                     <label  class="control-label"  style="color:#00008B;"><span id="for_board_quantity">Board Quantity (Pcs):</span> </label>

                                            </div>

                                            <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="board_quantity" name="board_quantity" >

                                            </div>



                                   
                                   </div>



                                     <div class="form-group form-group-sm" >
                      

                                            <div class="col-sm-3 text-center">
                                             <label class="control-label"  style="color:#00008B;"><span id="for_cutter_size">Cutter Size (mm):</span> </label>
                                            </div>
                                           
                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="cutter_size" name="cutter_size" >

                                            </div>



                                            <div class="col-sm-2 text-center">
                                                     <label class="control-label"  style="color:#00008B;"><span id="for_roll_size">Roll Size :</span> </label>

                                            </div>

                                            <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="roll_size" name="roll_size" >

                                            </div>

                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="hidden" id="cutting_ratio" name="cutting_ratio" value="">

                                            </div>



                                           
                                   
                                   </div>




                                <div class="form-group form-group-sm" >
                      

                                            <div class="col-sm-3 text-center">
                                               <label class="control-label"  style="color:#00008B;"><span id="for_score_or_creez_size">Score/Creez Size (mm):</span> </label>
                                            </div>
                                           
                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="score_or_creez_size" name="score_or_creez_size" >

                                            </div>

                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="score_or_creez_size_1" name="score_or_creez_size_1" >

                                            </div>

                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="score_or_creez_size_2" name="score_or_creez_size_2" >

                                            </div>



                       
                                 </div>



                                 <div class="form-group form-group-sm" >
                      

                                            <div class="col-sm-3 text-center">
                                               <label class="control-label"  style="color:#00008B;"><span id="for_slotting_size">Slotting Size (MM):</span> </label>
                                            </div>
                                           
                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="slotting_size" name="slotting_size" >

                                            </div>

                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="slotting_size_1" name="slotting_size_1" >

                                            </div>


                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="slotting_size_2" name="slotting_size_2" >

                                            </div>
                                             <div class="col-sm-1 text-center">
                                                   
                                                    <input class="form-control input-sm" type="text" id="slotting_size_3" name="slotting_size_3" >

                                            </div>



                       
                                 </div>


                       
                          </div>




                           <script>
        
        function calculate_width_wise_data(measurement_of_carton_width)
        {
               

               var measurement_of_carton_length=document.getElementById("measurement_of_carton_length").value;
               var measurement_of_carton_width=document.getElementById("measurement_of_carton_width").value;

               var cutter_size_first_step=(parseFloat(measurement_of_carton_length)+parseFloat(measurement_of_carton_width))*2;
               
               
               var cutter_size=(cutter_size_first_step+4)* 10;


               



               var slotting_size=(measurement_of_carton_length*10)-2;
               var slotting_size_1=(measurement_of_carton_width*10)-2;

               document.getElementById("cutter_size").value=cutter_size;

              


               document.getElementById("slotting_size").value=slotting_size;

               document.getElementById("slotting_size_1").value=slotting_size_1;

               document.getElementById("slotting_size_2").value=slotting_size;
               document.getElementById("slotting_size_3").value=slotting_size_1;
        }


          function calculate_height_wise_data()
          {
             var measurement_of_cartoon_height=document.getElementById("measurement_of_cartoon_height").value;

             var measurement_of_carton_width=document.getElementById("measurement_of_carton_width").value;

              
           
              var score_or_creez_size=((measurement_of_carton_width*10)/2);
               var score_or_creez_size_1=((measurement_of_cartoon_height*10)-2);
               var score_or_creez_size_2=((measurement_of_carton_width*10)/2);


              

      
               document.getElementById("score_or_creez_size").value=score_or_creez_size;


               document.getElementById("score_or_creez_size_1").value=score_or_creez_size_1;


               document.getElementById("score_or_creez_size_2").value=document.getElementById("score_or_creez_size").value;



            if(((((parseFloat(measurement_of_carton_width)+parseFloat(measurement_of_cartoon_height))*4)+4)/2.55) < 68)
            {
            

                document.getElementById("ratio").value=4;
                var ratio=4;

            

                var roll_size=((parseFloat(score_or_creez_size)+parseFloat(score_or_creez_size_1)+parseFloat(score_or_creez_size_2))* ratio)/25.4;

                var calc_roll_size=parseInt(roll_size)+2;

                

                 if ( calc_roll_size % 2 == 0) {
                                    document.getElementById("roll_size").value=calc_roll_size;
                                }else{
                                    document.getElementById("roll_size").value=calc_roll_size+1;
                                }

            }

            else if(((((parseFloat(measurement_of_carton_width)+parseFloat(measurement_of_cartoon_height))*3)+4)/2.55) < 68)
            {
            
                 
                document.getElementById("ratio").value=3;
                var ratio=3;
               
         

                var roll_size=((parseFloat(score_or_creez_size)+parseFloat(score_or_creez_size_1)+parseFloat(score_or_creez_size_2))* ratio)/25.4;



                var calc_roll_size=parseInt(roll_size)+2;

                

                if ( calc_roll_size % 2 == 0) {
                                    document.getElementById("roll_size").value=calc_roll_size;
                                }else{
                                    document.getElementById("roll_size").value=calc_roll_size+1;
                                }

            }

            else if(((((parseFloat(measurement_of_carton_width)+parseFloat(measurement_of_cartoon_height))*2)+4)/2.55) < 68)
            {
            

                document.getElementById("ratio").value=2;
                var ratio=2;
                

                var roll_size=((parseFloat(score_or_creez_size)+parseFloat(score_or_creez_size_1)+parseFloat(score_or_creez_size_2))* ratio)/25.4;

                var calc_roll_size=parseInt(roll_size)+2;

                

                if ( calc_roll_size % 2 == 0) {
                                    document.getElementById("roll_size").value=calc_roll_size;
                                }else{
                                    document.getElementById("roll_size").value=calc_roll_size+1;
                                }

            }

            else 
            {
                document.getElementById("ratio").value=1;
                var ratio=1;

                var roll_size=((parseFloat(score_or_creez_size)+parseFloat(score_or_creez_size_1)+parseFloat(score_or_creez_size_2))*parseFloat(ratio))/25.4;

                

                var calc_roll_size=parseInt(roll_size)+2;

                 if(calc_roll_size % 2 == 0) 
                 {
                    document.getElementById("roll_size").value=calc_roll_size;
                 }
                 else
                 {
                    document.getElementById("roll_size").value=calc_roll_size+1;
                 }

            }

        }

  
        function total_board_Quantity(carton_quantity){
            var carton_quantity= carton_quantity;
            var ratio= document.getElementById("ratio").value;

            board_quantity= (carton_quantity/ratio);
            
            document.getElementById("board_quantity").value=board_quantity;

            
               
        }
      </script>
