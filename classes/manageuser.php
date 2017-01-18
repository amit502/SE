<?php

include_once('connection.php');
//include_once('userconnection.php');
class ManageUsers{
  public $link;
function __construct(){
	$db_connection=new dbConnection();
	$this->link=$db_connection->connect();
	return $this->link;
} 
function RegisterUsers($username,$password,$ip_address,$time,$date,$us,$s_id,$grade,$addr,$fat,$mot,$dobbs,$dobad,$fname,$lname,$gender){
	$query=$this->link->prepare("INSERT INTO users (username,password,ip_address,time,date,user_status) VALUES (?,?,?,?,?,?)");
	$values=array($username,$password,$ip_address,$time,$date,$us);
	$query->execute($values);
	$count1 = $query->rowCount();
	$query=$this->link->prepare("INSERT INTO strecord (s_id,username,grade,address,father,mother,first_name,last_name,gender,dobbs,dobad) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
	$values=array($s_id,$username,$grade,$addr,$fat,$mot,$fname,$lname,$gender,$dobbs,$dobad);
	$query->execute($values);
	$count2=$query->rowCount();
	//echo $count2;
	//die();
	if($count1==1 && $count2==1){
		$counts=1;
	}
	else{
		$counts=0;
		echo "Unable to register";
		//die();
	}
	return $counts;
}
function GetUserInfo($username){
	$query = $this->link->query("SELECT * FROM users WHERE username = '$username'");
     $rowcount = $query->rowCount();   
   if($rowcount==1){
		$result=$query->fetchAll();
		return $result;
	}
	else{
		return $rowcount;
	}
	}
	function admin($username,$password){
	$query = $this->link->prepare("SELECT * FROM admin WHERE username = '$username' AND password = '$password'");
	$query->execute();
	$rowcount = $query->rowCount();
	return $rowcount;
}
 
 
}


?>