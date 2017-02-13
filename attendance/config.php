
<?php
$connect=mysql_connect("localhost","root");
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