<?php
session_start();
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$data_previously_saved = "No";
$data_insertion_hampering = "No";
/*$user_name ="Iftekhar";
$user_id ="Iftekhar";
$password ="1234";*/

$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$user_name = $_SESSION['user_name'];

$po_creation_date= $_POST['po_creation_date'];
$po_number= $_POST['po_number'];

$customer_name= $_POST['customer_name'];
$splitted_customer= explode("?fs?",$customer_name);
$customer_name=$splitted_customer[0];
$customer_id=$splitted_customer[1];

$buyer_name= $_POST['buyer_name'];
$splitted_buyer= explode("?fs?",$buyer_name);
$buyer_name=$splitted_buyer[0];
$buyer_id=$splitted_buyer[1];

$po_order_received_date= $_POST['po_order_received_date'];
$product_delivery_date= $_POST['product_delivery_date'];
$responsible_person= $_POST['responsible_person'];
$product_category= $_POST['product_category'];
$order_type= $_POST['order_type'];
$po_quantity= $_POST['po_quantity'];


mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error());

$select_sql_for_duplicacy="select * from `po_creation` where `po_number`='$po_number' and `product_category`='$product_category' and `po_quantity`='$po_quantity'";

$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error());

if(mysqli_num_rows($result)>0)
{

	$data_previously_saved="Yes";

}
else if( mysqli_num_rows($result) < 1)
{
    $select_sql_max_primary_key="select MAX(max_po_id) as max_po_id FROM (select CONVERT(substring(po_id,4,LENGTH(po_id)),UNSIGNED) as max_po_id from po_creation) as temp_po_id_table"; //converted into string and find max

    $result_for_max_primary_key = mysqli_query($con,$select_sql_max_primary_key) or die(mysqli_error($con));
    
    $row_for_max_primary_key = mysqli_fetch_array($result_for_max_primary_key);

    $row_id=$row_for_max_primary_key['max_po_id']+1;

    if($row_for_max_primary_key['max_po_id']==0)
    {

    	$current_po_id='po_1';

    }
    else
    {

    	$current_po_id ="po_".($row_for_max_primary_key['max_po_id']+1);

    }

	$insert_sql_statement="insert into `po_creation` 
	                        (
	                        `row_id`,
	                        `po_creation_date`,
	                        `po_id`,
	                        `po_number`,
	                        `customer_id`,
	                        `customer_name`,

	                        `buyer_id`,
	                        `buyer_name`,

	                        `po_order_received_date`,
	                        `product_delivery_date`,
	                        `responsible_person`,
	                        `product_category`,
	                        `order_type`,
	                        `po_quantity`,

	                        `recording_person_id`,
	                        `recording_person_name`,
	                        `recording_time` ) 
	                        values 
	                        (
	                        '$row_id',
	                        '$po_creation_date',
	                        '$current_po_id',
	                        '$po_number',

	                        '$customer_id',
	                        '$customer_name',

	                        '$buyer_id',
	                        '$buyer_name',


	                        '$po_order_received_date',
	                        '$product_delivery_date',
	                        '$responsible_person',
	                        '$product_category',
	                        '$order_type',
	                        '$po_quantity',
	                        
	                        '$user_id',
	                        '$user_name',
	                        NOW())";

	mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));

	if(mysqli_affected_rows($con)<>1)
	{
	
		$data_insertion_hampering = "Yes";
	
	}
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is previously saved.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Data is successfully saved.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is not successfully saved.";

}

$obj->disconnection();

?>
