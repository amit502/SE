<?php

if(isset($_POST['submit'])){
	session_start();
	include_once('classes/manageuser.php');
	include_once('classes/userconnection.php');
	include_once('classes/userclass.php');
	 $username =$_POST['username'];
	$password=$_POST['password'];
	if(empty($username) || empty($password))
	{
		echo "Enter correct username and password!";
	}
	else{
		
		$ck=new ManageUsers();
		$stat=$ck->GetUserInfo($username);
		foreach($stat as $uinfo)
	{
		//print_r($uinfo);
		//$name=$uinfo['username'];
		
		// $ip= $uinfo['ip_address'];
		 //$date= $uinfo['date'];
		 //$time=$uinfo['time'];
		$stat= $uinfo['user_status'];
		 //$s_id= $uinfo['s_id'];
		 //$addr=$uinfo['address'];
		 // $fat=$uinfo['father'];
		  //$mot=$uinfo['mother'];
	}
		$_SESSION['status']=$stat;
		//echo $_SESSION['status'];
		$users= new UserClass();
$check=$users->LoginUsers($_POST['username'],$_POST['password']);
if($check==1){
	//$info=$users->GetUserInfo($_POST['username']);
	$make_sessions=$users->GetUserInfo($username);
			
				$_SESSION['loggedin'] =true;
				$_SESSION['uname']=$_POST['username'];
				if(isset($_SESSION['loggedin']))
				{
					header("location:home.php");
				}
			
			
        }

else{
	echo "Invalid username or password!";
}
	}
}
?>