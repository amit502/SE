<?php
session_start();
if(!isset($_SESSION['loggedin']))
	header("Location:login.php");
global $ip,$name,$date,$time,$stat,$s_id,$addr,$fat,$mot,$info;
include_once('classes/userconnection.php');
	include_once('classes/userclass.php');
	$info= new UserClass();
	$user=$_SESSION['uname'];
	$result=$info->GetUserInfo($user);
   
	foreach($result as $uinfo)
	{
		//print_r($uinfo);
		$name=$uinfo['username'];
		
		 $ip= $uinfo['ip_address'];
		 $date= $uinfo['date'];
		 $time=$uinfo['time'];
		$stat= $uinfo['user_status'];
		 $s_id= $uinfo['s_id'];
		 $addr=$uinfo['address'];
		  $fat=$uinfo['father'];
		  $mot=$uinfo['mother'];
	}
	
	
	

if(isset($_POST['logout'])){
     unset($_SESSION['loggedin']);
	session_destroy();
	
header("Location:login.php");
}

echo "Welcome  ".$name."<br />";
echo "Your ip-address is ".$ip." and you enrolled in ".$date." at ".$time." as a ".$stat."."."<br />";
echo "Your student id is: ".$s_id." You live in ".$addr." and your father is ".$fat." and mother is ".$mot.".";
?>
<form action="<?php $_PHP_SELF ?>" method="POST">
<input type="submit" name="logout" value="Log Out" />
<br/>
</form>
<form action="<?php $_PHP_SELF ?>" method="POST">
Change Your Password:
<br/>
Enter new Password:   <input type="password" name="cpass" /><br/>
Re-Enter the password:<input type="password" name="acpass" /><br />
<input type="submit" name="changepass" value="change Password" />
</form>
<form action="pdf.php" method="POST">
<input type="submit" name="pdf" value="PDF" />
</form>
<form action="tt/php/index.php" method="POST">
<input type="submit" value="View Time Table" name="tt"/>
</form>
<form action="attendance/index.php" method="POST">
<input type="submit" value="Attendance" name="attendance"/>
</form>
<?php
if(isset($_POST['changepass'])){
	if($_POST['cpass']){
	$newpass=$_POST['cpass'];
	$rnewpass=$_POST['acpass'];
	if($newpass==$rnewpass){
	$conf=$info->ChangePassword($name,$newpass);
	if($conf==1)
	{
		echo "Password Changed";
	}
	else{
		echo "Coldnot change password!";
	}
	}
	else{
		echo "Re-password didnot match!";
	}
	}
	else{
		echo "Password field is empty!";
	}
	
}
?>
