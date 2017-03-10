<?php
session_start();
error_reporting(E_ALL & ~E_NOTICE);
if(!isset($_SESSION['loggedin']))
	header("Location:login.php");
global $ip,$name,$date,$time,$stat,$s_id,$addr,$fat,$mot,$info;
include_once('classes/userconnection.php');
	include_once('classes/userclass.php');
	include_once('functions.php');
	
	$info= new UserClass();
	$user=$_SESSION['uname'];
	$user_id=$_SESSION['user_id'];
	$stat= $_SESSION['status'];
	$result=$info->GetUserInfo($user);
	$_SESSION['password_changed']=false;
   if($stat=='student'){
	foreach($result as $uinfo)
	{
		//print_r($uinfo);
		$name=$uinfo['username'];
		
		// $ip= $uinfo[''];
		 $date= $uinfo['date'];
		 $time=$uinfo['time'];
		//$stat= $uinfo['user_status'];
		 $s_id= $uinfo['user_id'];
		 //$addr=$uinfo['address'];
		 // $fat=$uinfo['father'];
		  //$mot=$uinfo['mother'];
	}
	
$_SESSION['stat']=$stat;	
	 
	 $student=new db();
     if(!($info=$student->get_single_std($conn,"student_table",$user_id))){
		 echo "Error getting student";
	 }
	 foreach($info as $val){
		 $studentName = $val['student_name'];
      $dob = $val['dob'];
      $gender = $val['gender'];
      $email = $val['email'];
      $phone= $val['phone'];
      $add= $val['address'];
      $status = $val['Status'];
      $year= $val['Year'];
      $class= $val['class'];
      $s_id= $val['student_id'];
	  
      $father=$val['father'];
	  $mother=$val['mother'];
	  $fee=$val['fee'];
	  $scholarship=$val['scholarship'];
	 }
	
if(isset($_POST['logout'])){
     unset($_SESSION['loggedin']);
	session_destroy();
	
header("Location:login.php");
}

//echo "Welcome  ".$name."<br />";
//echo "Your user_id is ".$user_id." and you enrolled in ".$date." at ".$time." as a ".$stat."."."<br />";
//echo " You live in ".$addr." and your father is ".$fat." and mother is ".$mot.".";
?>
<div style="background-color:blue;color:white;" >
<form action="<?php $_PHP_SELF ?>" method="POST">
<input type="submit" name="logout" value="Log Out" />
<br/>
</form>
<form action="routine/index.php" method="POST">
<input type="submit" name="routine" value="View Exam Schedule" />
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
</div>


<!DOCTYPE html>
<html>
<title>HOME PAGE</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="wcss/css1.css">
<link rel='stylesheet' href='wcss/css2.css'>
<link rel="stylesheet" href="wcss/css3.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="<?php echo "img/".$user.".jpg"; ?>" style="width:100%" alt=" <?php echo $studentName; ?>">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2><?php echo $studentName; ?></h2>
          </div>
        </div>
        <div class="w3-container">
		<p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><?php include_once('upd.php'); ?></p>
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"><?php echo $stat; ?></i></p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"><?php echo $add; ?></i></p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"><?php echo $email; ?></i></p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"><?php echo $phone; ?></i></p>
          <hr>

          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
          <p>Adobe Photoshop</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
          </div>
          <p>Photography</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:80%">
              <div class="w3-center w3-text-white">80%</div>
            </div>
          </div>
          <p>Illustrator</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
          </div>
          <p>Media</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:50%">50%</div>
          </div>
          <br>

          <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
          <p>English</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
          </div>
          <p>Spanish</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:55%"></div>
          </div>
          <p>German</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:25%"></div>
          </div>
          <br>
        </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>About</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><?php echo $studentName; ?> /<?php echo $stat; ?> </b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><?php echo $date; ?> <span class="w3-tag w3-teal w3-round"><?php echo $status; ?></span></h6>
          <p>Amit Kumar Patel was enrolled and he is a student.</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Father</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><?php echo $father; ?></h6>
          <p>Consectetur adipisicing elit. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Mother</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><?php echo $mother; ?></h6>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p><br>
        </div>
      </div>

      <div class="w3-container w3-card-2 w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>W3Schools.com</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>
          <p>Web Development! All I need to know in one place</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>London Business School</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015</h6>
          <p>Master Degree</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>School of Coding</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013</h6>
          <p>Bachelor Degree</p><br>
        </div>
      </div>

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>Find me on social media.</p>
  <i class="fa fa-facebook-official w3-hover-text-indigo w3-large"></i>
  <i class="fa fa-instagram w3-hover-text-purple w3-large"></i>
  <i class="fa fa-snapchat w3-hover-text-yellow w3-large"></i>
  <i class="fa fa-pinterest-p w3-hover-text-red w3-large"></i>
  <i class="fa fa-twitter w3-hover-text-light-blue w3-large"></i>
  <i class="fa fa-linkedin w3-hover-text-indigo w3-large"></i>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

</body>
</html>



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
		$_SESSION['password_changed']=true;
		$_POST=array();
	}
	else{
		echo "Duplicate operation orCouldnot change password! ";
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
   }
   // teacher section
   if($stat=='teacher'){
	foreach($result as $uinfo)
	{
		//print_r($uinfo);
		$name=$uinfo['username'];
		
		// $ip= $uinfo[''];
		 $date= $uinfo['date'];
		 $time=$uinfo['time'];
		//$stat= $uinfo['user_status'];
		 $s_id= $uinfo['s_id'];
		 $addr=$uinfo['address'];
		  $fat=$uinfo['father'];
		  $mot=$uinfo['mother'];
	}
	
$_SESSION['stat']=$stat;	
	

if(isset($_POST['logout'])){
     unset($_SESSION['loggedin']);
	session_destroy();
	
header("Location:login.php");
}

echo "Welcome  ".$name."<br />";
echo "Your user_id is ".$user_id." and you enrolled in ".$date." at ".$time." as a ".$stat."."."<br />";
//echo " You live in ".$addr." and your father is ".$fat." and mother is ".$mot.".";
$teacher=new db();
     if(!($info=$teacher->get_single_teacher($conn,"teacher_table",$user_id))){
		 echo "Error getting student";
	 }
	 foreach($info as $val){
		 $firstName = $val['first_name'];
      $lastName = $val['last_name'];
      $dob = $val['dob'];
      $gender = $val['gender'];
      $email = $val['email'];
      $phone= $val['phone'];
      $degree= $val['degree'];
      $salary= $val['salary'];
      $address= $val['address'];
	  $father=$val['father'];
	  $mother=$val['mother'];
      $id= $val['teacher_id'];
	 }
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



<!DOCTYPE html>
<html>
<title>HOME PAGE</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="wcss/css1.css">
<link rel='stylesheet' href='wcss/css2.css'>
<link rel="stylesheet" href="wcss/css3.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="amit.jpg" style="width:100%" alt=" <?php echo $studentName; ?>">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2><?php echo $studentName; ?></h2>
          </div>
        </div>
        <div class="w3-container">
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"><?php echo $stat; ?></i></p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"><?php echo $add; ?></i></p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"><?php echo $email; ?></i></p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"><?php echo $phone; ?></i></p>
          <hr>

          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
          <p>Adobe Photoshop</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
          </div>
          <p>Photography</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:80%">
              <div class="w3-center w3-text-white">80%</div>
            </div>
          </div>
          <p>Illustrator</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
          </div>
          <p>Media</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:50%">50%</div>
          </div>
          <br>

          <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
          <p>English</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
          </div>
          <p>Spanish</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:55%"></div>
          </div>
          <p>German</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:25%"></div>
          </div>
          <br>
        </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Front End Developer / w3schools.com</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2015 - <span class="w3-tag w3-teal w3-round">Current</span></h6>
          <p>Lorem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Web Developer / something.com</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Mar 2012 - Dec 2014</h6>
          <p>Consectetur adipisicing elit. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Graphic Designer / designsomething.com</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jun 2010 - Mar 2012</h6>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p><br>
        </div>
      </div>

      <div class="w3-container w3-card-2 w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>W3Schools.com</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>
          <p>Web Development! All I need to know in one place</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>London Business School</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015</h6>
          <p>Master Degree</p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>School of Coding</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013</h6>
          <p>Bachelor Degree</p><br>
        </div>
      </div>

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>Find me on social media.</p>
  <i class="fa fa-facebook-official w3-hover-text-indigo w3-large"></i>
  <i class="fa fa-instagram w3-hover-text-purple w3-large"></i>
  <i class="fa fa-snapchat w3-hover-text-yellow w3-large"></i>
  <i class="fa fa-pinterest-p w3-hover-text-red w3-large"></i>
  <i class="fa fa-twitter w3-hover-text-light-blue w3-large"></i>
  <i class="fa fa-linkedin w3-hover-text-indigo w3-large"></i>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

</body>
</html>


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
   }
?>
