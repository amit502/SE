<?php
session_start();
$_SESSION['user_stat']=$_POST['user_status'];
if(isset($_SESSION['signup']) && isset($_POST['start_reg']))
{   //echo $_POST['user_status'];  $username,$password,$hsh,$time,$date,$_SESSION['user_stat'],$hsh,$_$_POST['roll_no'],$_$_POST['dob'],$_POST['gender'],$_POST['emmail'],$_POST['phone'],$_POST['address'],$_POST['status'],$_POST['year'],$_POST['class'],$_POST['fat'],$_POST['mot'],$_POST['sname']
	if($_POST['user_status']=='student'){ ?>
<form action="register.php" method="POST">

Register Here<br />
<table>
<div class="form-group">
<tr>
<td><label for="username">username:</label></td>

<td><input type="text" name="username" /></td>
</tr>
</div>
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
<td>Class:</td>
<td><input type="number" name="class" min="1" max="10"  /></td>
</tr>
<tr>
<td>Email:</td>
<td><input type="email" name="email"  /></td>
</tr>
<tr>
<td>Date of Birth:</td>
<td><input type="date" name="dob"  /></td>
</tr>
<tr>
<td>Roll No.:</td>
<td><input type="text" name="roll_no"  /></td>
</tr>
<tr>
<td>Address:</td>
<td><input type="text" name="address"  /></td>
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
<td>Student Name:</td>
<td><input type="text" name="sname"  /></td>
</tr>
<tr>
<td>Phone:</td>
<td><input type="text" name="phone"  /></td>
</tr>
<tr>
<tr>
<td>Fee Amount:</td>
<td><input type="text" name="fee"  /></td>
</tr>
<tr>
<td>Scholarship:</td>
<td><input type="text" name="scholarship"  /></td>
</tr>
<tr>
<tr>
<td>Enrolled:</td>
<td><select  name="status"  />
<option>Enrolled</option>
<option>Not Enrolled</option>
</select>
</td>
</tr>

<tr>
<td>Gender:</td>
<td><input type="radio" name="gender" value="male"> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other</td>
</tr>
</table>
<div class="form-group">
<tr>
<td></td>
<td><input type="submit" name="reg_student"/></td>
</tr>
</div>
</form>
<?php
	}
	else if($_POST['user_status']=='teacher'){
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
<td><input type="text" name="address"  /></td>
</tr>
<tr>
<td>Phone:</td>
<td><input type="text" name="phone"  /></td>
</tr>
<tr>
<td>Degree:</td>
<td><select  name="degree"  required id="degree" name="degree">
           
           
           <option >Bachelor</option>
           <option >Master</option>
           <option >M.Phil</option>
           <option >P.HD</option>
           </select></td>
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
<td>Date of Birth:</td>
<td><input type="date" name="dob"  /></td>
</tr>
<tr>
<td>Email:</td>
<td><input type="email" name="email"  /></td>
</tr>
<tr>
<td>Gender:</td>
<td><input type="radio" name="gender" value="male"> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other</td>
</tr>
<tr>
<td>Salary:</td>
<td><input type="text" name="salary"  /></td>
</tr>
</table>
<tr>
<td></td>
<td><input type="submit" name="reg_teacher"/></td>
</tr>

</form>
		<?php
	}
	
	
		
	
}
else{
	header("Location:login.php");
}
?>