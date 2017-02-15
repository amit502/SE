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
	<input type="submit" name="admin_attendance" value="Attendance" />
	</form>
	<form action="tt/php/index.php" method="POST">
	<input type="submit" name="admin_tt" value="Time Table">
	</form>
	<form action="add.php" method="POST">
	<input type="submit" name="add_news" value="Add News">
	</form>
	<form action="edit.php" method="POST">
	<input type="submit" name="edit_news" value="Edit News">
	</form>
	<form action="delete.php" method="POST">
	<input type="submit" name="edit_news" value="Delete News">
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