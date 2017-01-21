<?php
error_reporting(E_ALL & ~ E_NOTICE);
session_start();
 $pagetitle="LogIn Page";
  include 'connection.php';
?>
<?php 
if(isset($_POST['admin_attendance'])){
	$_SESSION['loggedin']=true;
	$_SESSION['status']='admin';
	$_SESSION['username']='admin';
	$_SESSION['id']=true;
	 header('Location:home.php');
}
if(!isset($_SESSION['loggedin'])){
	header('Location:/pro/login.php');
}
       if(isset($_SESSION['loggedin']) && $_SESSION['status']!='admin'){
        include 'connection.php';
       // $username=($_POST['username']);
        //$password=($_POST['password']);
         
        $sql="SELECT id, username, password FROM users WHERE username='$username' ";//AND activated='1' LIMIT 1";
        $query=mysqli_query($dbcon, $sql);
        if($query){
          $row= mysqli_fetch_row($query);
          $userId= $row[0];
          $dbusername=$row[1];
          $dbpassword=$row[2];
        }
           if($username== $dbusername && $password== $dbpassword){
          $_SESSION['username']=$_SESSION['uname'];
         // $_SESSION['id']=$userId;
          header('Location:home.php');
        }//else{
           // echo "<span style='color:red;'>User name or password is incorrect!</span>";
         // }    
} 
?>
       
          
 <?php include "includes/footer.php"; ?>