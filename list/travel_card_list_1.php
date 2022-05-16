<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$search=$_POST['search'];

    $offset=10;
    $s1=0;


    $sql_for_travel_card_id = "SELECT * FROM travel_card_details tcd inner join po_creation pc on pc.po_id=tcd.po_id WHERE traver_card_id = '$search'  ORDER BY tcd.row_id ASC limit $offset,10";




$res_for_travel_card_id = mysqli_query($con, $sql_for_travel_card_id);
?>
<input type="text" class="form-control" value="<?php echo $search?>" id="search" name="search" placeholder="Search">

<form class="form-inline" action="" style="margin-top:10px;" name="search_for_item" id="search_for_item">

    <div class="form-group mx-sm-3 mb-2">

        <input type="text" class="form-control" id="search" name="search" placeholder="Search">
    </div>
    <button type="button" class="btn btn-primary" onClick="sending_data()">Submit</button>


</form>
<table  class="table table-striped table-bordered">

    <thead>
        <tr>
            <th style="text-align: center;">SI</th>
            <th style="text-align: center;">travel_card Number</th>
            <th style="text-align: center;">PO No.</th>
            <th style="text-align: center;">Action</th>
        </tr>
    </thead>
    <tbody>
    <?php
    while ($row = mysqli_fetch_assoc($res_for_travel_card_id))
    {
        $s1=$s1+1;
        ?>
        <tr>
            <td><?php echo $s1; ?></td>
            <td style="display: none;"><?php echo $row['travel_card_id']; ?></td>
            <td><?php echo $row['travel_card_id']; ?></td>
            <td><?php echo $row['po_number']; ?></td>
            <td>
                    
                    
                    <button type="submit" id="edit_travel_card_info" name="edit_travel_card_info"  class="btn btn-primary btn-xs" onclick="load_page('list/edit_travel_card_info.php?travel_card_id=<?php echo $row['travel_card_id'] ?>')"> Edit </button>
                    <span>  </span>

                    


                    <?php 

                        $tarvel_card_id = $row['travel_card_id']; 
                    
                        $sql_check_tcd_id_avaiable_in_tcdft_or_not = "SELECT * FROM travel_card_details_for_transactions WHERE travel_card_id = '$tarvel_card_id'";
                        $result_check_tcd_id_avaiable_in_tcdft_or_not = mysqli_query($con,$sql_check_tcd_id_avaiable_in_tcdft_or_not);
                        
                        if(mysqli_num_rows($result_check_tcd_id_avaiable_in_tcdft_or_not)>0)  
                        
                        {
                            
                    
                        }
                            else
                            {
                            ?>
                                <button type="submit" id="delete_travel_card" name="delete_travel_card"  class="btn btn-danger btn-xs" value="<?php echo $tarvel_card_id ?>" onclick="sending_data_for_delete_travel_card(this.value)"> Delete </button>
                            
                            <?php

                            }
                    
                    ?>

                    
                    
                    
                </td>
           
        </tr>
        <?php
    }

    ?>

    <nav aria-label="Page navigation example">
        <ul class="pagination">

            <?php

            $cout="SELECT COUNT(row_id) as count FROM `travel_card_details` WHERE 1";
            $count_f=mysqli_query($con,$cout);
            while ($count_row=mysqli_fetch_assoc($count_f)){
                $count=$count_row['count'];
            }
            $l=1;
            $k=$offset;


            ?>
            <li class="page-item" id="<?php echo ($k-10)?>" value="<?php echo ($l-1)?>" class="page-item" onclick="pagination(this.id)" >
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <?php


            for ($i=0;$i<=100;$i=$i+10) {
                ?>
                <li id="<?php echo $k?>" value="<?php echo $l?>" class="page-item" onclick="pagination(this.id)"><a  class="page-link" href="#"
                    ><?php echo $l?></a></li>

                <?php
                $l++;
                $k=$k+10;
            }

            ?>

            <li class="page-item" id="<?php echo ($k)?>" value="<?php echo ($l)?>" class="page-item" onclick="pagination(this.id)" >
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>

    </tbody>
</table>









<script>


  function sending_data_for_delete_travel_card(tcd_id)
 {
	 
       //var div=$('#table_load').html();

       var travel_card_id = tcd_id;
	  

	  // alert(travel_card_id);
       
		  	 $.ajax({
			 		url: 'list/travel_card_deleting.php',
			 		dataType: 'text',
			 		type: 'post',
			 		contentType: 'application/x-www-form-urlencoded',
			 		data: {travel_card_id: travel_card_id},
			 		success: function( data, textStatus, jQxhr )
			 		{
			 				alert(data);

			 				// if(data=='travel_card is successfully Deleted.')
			 				// {
			 				// 	/*alert("ok");*/
                              
			 					
                              
                            //   /*$('#table_load').html(div);*/
                            //   /*$('#datatable-buttons').DataTable().ajax.reload();*/

			 					
			 				// }
			 		},
			 		error: function( jqXhr, textStatus, errorThrown )
			 		{
			 				//console.log( errorThrown );
			 				alert(errorThrown);
			 		}
			 }); // End of $.ajax({



 }//End of function sending_data_of_color_form_for_delete_from_database()


 

</script>
