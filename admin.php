<?php
session_start();
$_SESSION['user_stat']=$_POST['user_status'];
if(isset($_SESSION['signup']) && isset($_POST['start_reg']))
{   //echo $_POST['user_status'];
	if($_POST['user_status']=='Student'){ ?>
<form action="register.php" method="POST">
Register Here<br />
<table>
<tr>
<td>username:</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>
password:</td>
<td><input type="password" name="password"  /></td>
</tr>
<tr>
<td>
Confirm-password:</td>
<td><input type="password" name="repassword" /></td>
</tr>

<tr>
<td>Grade:</td>
<td><input type="number" name="grade"  /></td>
</tr>
<tr>
<td>Address:</td>
<td><input type="text" name="addr"  /></td>
</tr>
<tr>
<td>Father's name:</td>
<td><input type="text" name="fat"  /></td>
</tr>
<tr>
<td>Mother's name:</td>
<td><input type="text" name="mot"  /></td>
</tr>
<tr>
<td>First name:</td>
<td><input type="text" name="fname"  /></td>
</tr>
<tr>
<td>Last name:</td>
<td><input type="text" name="lname"  /></td>
</tr>
<tr>
<td>Date of Birth(B.S.):</td>
<td><input type="text" name="dobbs"  /></td>
</tr>
<tr>
<td>Date of Birth(A.D.):</td>
<td><input type="text" name="dobad"  /></td>
</tr>
<tr>
<td>Gender:</td>
<td><input type="text" name="gender"  /></td>
</tr
</table>
<tr>
<td></td>
<td><input type="submit" name="reg_student"/></td>
</tr>
</form>
<?php
	}
	else if($_POST['user_status']=='Teacher'){
		?>
		   <form action="register.php" method="POST">
Register Here<br />
<table>
<tr>
<td>username:</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>
password:</td>
<td><input type="password" name="password"  /></td>
</tr>
<tr>
<td>
Confirm-password:</td>
<td><input type="password" name="repassword" /></td>
</tr>


<tr>
<td>Address:</td>
<td><input type="text" name="addr"  /></td>
</tr>
<tr>
<td>Father's name:</td>
<td><input type="text" name="fat"  /></td>
</tr>
<tr>
<td>Mother's name:</td>
<td><input type="text" name="mot"  /></td>
</tr>
<tr>
<td>First name:</td>
<td><input type="text" name="fname"  /></td>
</tr>
<tr>
<td>Last name:</td>
<td><input type="text" name="lname"  /></td>
</tr>
<tr>
<td>Date of Birth(B.S.):</td>
<td><input type="text" name="dobbs"  /></td>
</tr>
<tr>
<td>Date of Birth(A.D.):</td>
<td><input type="text" name="dobad"  /></td>
</tr>
<tr>
<td>Gender:</td>
<td><input type="text" name="gender"  /></td>
</tr
</table>
<tr>
<td></td>
<td><input type="submit" name="reg_teacher"/></td>
</tr>
</form>
		<?php
	}
	else{?>
	 <form action="register.php" method="POST">
Register Here<br />
<table>
<tr>
<td>username:</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>
password:</td>
<td><input type="password" name="password"  /></td>
</tr>
<tr>
<td>
Confirm-password:</td>
<td><input type="password" name="repassword" /></td>
</tr>


<tr>
<td>Address:</td>
<td><input type="text" name="addr"  /></td>
</tr>
<tr>
<td>Father's name:</td>
<td><input type="text" name="fat"  /></td>
</tr>
<tr>
<td>Mother's name:</td>
<td><input type="text" name="mot"  /></td>
</tr>
<tr>
<td>First name:</td>
<td><input type="text" name="fname"  /></td>
</tr>
<tr>
<td>Last name:</td>
<td><input type="text" name="lname"  /></td>
</tr>
<tr>
<td>Date of Birth(B.S.):</td>
<td><input type="text" name="dobbs"  /></td>
</tr>
<tr>
<td>Date of Birth(A.D.):</td>
<td><input type="text" name="dobad"  /></td>
</tr>
<tr>
<td>Gender:</td>
<td><input type="text" name="gender"  /></td>
</tr
</table>
<tr>
<td></td>
<td><input type="submit" name="reg_staff"/></td>
</tr>
</form>
	<?php
		
	}
}
else{
	header("Location:login.php");
}
?>