<?php
include_once('classes/connection.php');
	include_once('classes/manageuser.php');
	$sign=new ManageUsers();
	$user=$_POST['admin'];
	$passw=$_POST['apassword'];
	$entry=$sign->admin($user,$passw);
if($entry==1){
	session_start();
	$_SESSION['signup']=true;
	?>
	<form action="admin.php" method="POST">
	Please enter the type of user to be registered.
Type of user:
<select name="user_status" >
  <option>student</option>
  <option >teacher</option>
  <option >staff</option>
</select>
<input type="submit" value="Start Registration" name="start_reg" />
	</form>
	<form action="attendance/login.php" method="POST">
	<input type="submit" name="admin_attendance" value="Attendance">
	</form>
	<?php 
	
}
else{
	echo "Invalid username or password.";
	?>
	<form action="login.php" method="POST">
	<input type="submit" name="retry" value="Retry!">
	</form>
	<?php
}
?>