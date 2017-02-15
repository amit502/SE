<html>
<head>
<title>News</title>
</head>
<body>
<?php

error_reporting(E_ALL ^ E_DEPRECATED);
mysql_connect('localhost','root','');
mysql_select_db('sms');
$query = mysql_query('SELECT * FROM news ORDER BY id DESC');
$i=0;
if(isset($_SESSION['k'])){
$k=$_SESSION['k'];
echo $k;
echo $i;
}
else{
	$k=1;
}
while($result = mysql_fetch_assoc($query))
{
	echo $result['subject'].'<br />';
	echo $result['news'].'<br / >';
	echo 'Date:'. $result['date'].'<br / >';
	echo 'Posted by '.$result['postedby'];
	echo '<hr />'; 
	$i++;
	echo $k;
echo $i;
	if($i>$k){
		break;
	}
}
?>
<div >
<form action="newsfeed.php" method='post'>
<input type="submit" name="next" value="Next" />
<input type="submit" name="previous" value="Prev" />
</form>
<!--<form action="<?php //echo $_SERVER["PHP_SELF"];?>" method='post'>
<input type="submit" name="previous" value="Prev" />
</form>-->
</div>
</body>
</html>