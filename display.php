<html>
<head>
<title>News</title>
</head>
<body>
<?php

error_reporting(E_ALL ^ E_DEPRECATED);
mysql_connect('localhost','root','');
mysql_select_db('sms');
 $_SESSION['n']=2;
/*if(isset($_SESSION['k'])){
$k=$_SESSION['k'];
$i=$k;
//echo $k;
//echo $i;
}
else{
	$k=2;
	global $i;
	$i=2;
}
*/

if(isset($_POST['next'])){
	$i=$_SESSION['n'] +2;
echo 'SELECT * FROM news ORDER BY id DESC limit '. $i;
$query = mysql_query('SELECT * FROM news ORDER BY id DESC limit '.$i);
}
if(isset($_POST['previous'])){
	$i++;
//echo 'SELECT * FROM news ORDER BY id DESC limit '. $i;
$query = mysql_query('SELECT * FROM news ORDER BY id DESC limit '.$i);
}
else{
	$query = mysql_query('SELECT * FROM news ORDER BY id DESC limit 2');
}
while($result = mysql_fetch_assoc($query))
{
	echo $result['subject'].'<br />';
	echo $result['news'].'<br / >';
	echo 'Date:'. $result['date'].'<br / >';
	echo 'Posted by '.$result['postedby'];
	echo '<hr />'; 
	
}
?>
<div >
<form action="display.php" method='post'>
<input type="submit" name="next" value="Next" />
<input type="submit" name="previous" value="Prev" />
</form>
<!--<form action="<?php //echo $_SERVER["PHP_SELF"];?>" method='post'>
<input type="submit" name="previous" value="Prev" />
</form>-->
</div>
</body>
</html>