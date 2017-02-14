
<?php
session_start();
if($_SESSION['stat']!='root'){
$connect=mysql_connect("localhost",$_SESSION['stat'],$_SESSION['stat']);
}
else{
	$connect=mysql_connect("localhost",$_SESSION['stat'],"");
}
if(!$connect)
{
	echo "Error".mysql_error();
	}
	
	
	$db=mysql_select_db("sms");
	if(!$db)
	{
		echo "Error".mysql_error();
		}
		



?>