<?php 
if($_SESSION['username']!='admin'){
$dbcon = mysqli_connect("localhost","root","","sms");

$user=$_SESSION['uname'];
$query1 = "SELECT * FROM users WHERE username='$user'";
    $select = mysqli_query($dbcon,$query1)
        or die("Some error occurred!");
		 $row = mysqli_fetch_array($select, MYSQLI_ASSOC);
		 $dbuser=$row['user_status'];
		 $dbpass=$row['user_status'];
		  $_SESSION['id']=$row['id'];
		 $dbcon = mysqli_connect("localhost",$dbuser,$dbpass,"attendance_db");
}
else{
	$dbcon = mysqli_connect("localhost","root","","sms");
}
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  // else{
  // 	echo "successfully connected!";
  // }

 ?>