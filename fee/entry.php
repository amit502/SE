<!doctype html
<html>
<head>
<style>
input,select,textarea
{
border-radius:10px;
border-color:blue;
text-align:centre;
}

select
{
width:150px;
height:30px;
font-size:20px;
background: linear-gradient(to left, #a80077 , #66ff00);
}
option
{
font-size:30px;
}
#from
{
position:absolute;
left:300px;
top:10px;
}
#scripts
{
position:absolute;
left:300px;
top:30px;
width:250px;
height:40px;
}
#script
{
position:absolute;
left:300px;
top:110px;
width:250px;
height:40px;
}

#to
{
position:absolute;
left:300px;
top:85px;
}
#examfee{position:absolute;left:300px;top:165px;}
#examfeeid{position:absolute;left:300px;top:190px;width:250px;height:40px;}
#miscellanous{position:absolute;left:300px;top:250px;}
#miscellanousid{position:absolute;left:300px;top:275px;width:250px;height:40px;}
#examfee1{position:absolute;left:600px;top:165px;}
#examfeeid1{position:absolute;left:600px;top:190px;width:250px;height:40px;}
#miscellanous1{position:absolute;left:600px;top:250px;}
#miscellanousid1{position:absolute;left:600px;top:275px;width:250px;height:40px;}

#get
{
position:absolute;
left:450px;
top:330px;
width:100px;
height:40px;
}

#post
{
position:absolute;
left:450px;
width:200px;
height:40px;
}
input
{
display:block;
}
#par
{
position:absolute;
left:600px;
top:30px;
width:250px;
}
#m
{
position:absolute;
top:10px;
left:600px;
font-size:20px;
}
#met
{
position:absolute;
top:110px;
left:600px;
width:250px;
}
#n
{
position:absolute;
top:85px;
font-size:20px;
left:600px;
}
option
{
font-size:30px;
}

</style>
</head>
<body style="background: linear-gradient(to left, #f79d00 , #64f38c);">
<?php 
$mo;
$n;
$name=$_POST["name"];
$roll=$_POST["roll"];
$class=$_POST["class"];

 
$con=mysqli_connect("localhost","root","","sms");
if ($con)
echo "";
$table="select * from structure st
inner join  strecord u
on st.SN=u.grade";
$res=mysqli_query($con,$table);
while($mon=mysqli_fetch_assoc($res))
{
if($mon['Remark']=="Paid")
{
$mo=$mon['Month'];
$n=$mon['SN'];

}
}

?>
<form action="updt.php" method="POST">
<label style="font-size:20px;">NAME</label>
<input type="text" style="width:250px; height:40px; font-size:20px; text-align:center;" readonly="readonly" name="name" value="<?php echo $name?>"><br>
<label style="font-size:20px;">ROLL</label>
<input type="text" style="width:250px; height:40px; font-size:20px; text-align:center;" readonly="readonly" name="roll" value="<?php echo $roll?>"><br>
<label style="font-size:20px;">CLASS</label>
<input type="text" style="width:250px; height:40px; font-size:20px; text-align:center;" readonly="readonly" name="class" value="<?php echo $class?>"><br>
<label style=" font-size:20px;">PAYMENT STATUS</label>
//
<input style="width:250px; height:40px; font-size:20px; text-align:center;" readonly="readonly" type="text" value="Baisakh-<?php echo $mo?>">
<input type="text" id="hidden" value="<?php echo $n?>" style="visibility:hidden;">

<label style="font-size:20px;" id="from">FROM</label>
<select id="scripts" name="from">
<option value="0">Select</option>
<option value="1">Baisakh</option>
<option value="2">Jestha</option>
<option value="3">Ashad</option>
<option value="4">Shrawan</option>
<option value="5">Bhadra</option>
<option value="6">Ashoj</option>
<option value="7">Kartik</option>
<option value="8">Mangsir</option>
<option value="9">Poush</option>
<option value="10">Magh</option>
<option value="11">Falgun</option>
<option value="12">Chaitra</option>
</select>
<label style="font-size:20px;" id="to">TO</label>
<select id="script" name="to">
<option value="0">Select</option>
<option value="1">Baisakh</option>
<option value="2">Jestha</option>
<option value="3">Ashad</option>
<option value="4">Shrawan</option>
<option value="5">Bhadra</option>
<option value="6">Ashoj</option>
<option value="7">Kartik</option>
<option value="8">Mangsir</option>
<option value="9">Poush</option>
<option value="10">Magh</option>
<option value="11">Falgun</option>
<option value="12">Chaitra</option>
</select>
<label style="font-size:20px;" id="examfee">EXAM FEE</label>
<select id="examfeeid" name="examfee">
<option value="0">0</option>
<option value="300">300</option>
</select>
<label style="font-size:20px;" id="miscellanous" name="miscellanous">MISCELLANOUS</label>
<input type="number" style="font-size:20px;" id="miscellanousid" name="miscellanous">
<label id="m">FEE AMOUNT</label>
<textarea id="par" type="text" style="font-size:20px; height:40px; text-align:center;" readonly="readonly"  name="totalfee"></textarea>
<label id="n">RECEIVED AMOUNT</label>
<textarea id="met" type="text"  style="font-size:20px; text-align:center;  height:40px;" name="receive" ></textarea>
<label id="examfee1">RETURNED AMOUNT</label>
<textarea id="examfeeid1" readonly="readonly" style="font-size:20px; text-align:center; height:40px;" name="return"></textarea>
<label id="miscellanous1">REMAINING AMOUNT</label>
<textarea id="miscellanousid1" readonly="readonly" style="font-size:20px; text-align:center;  height:40px;" name="remaining"></textarea>

<input type="button" id="get" value="GET" onclick="but()">
<input type="submit" style="background: linear-gradient(to left, #c21500 , #ffc500); position:absolute; top:380px;" value="GENERATE PAYSLIP" id="post">
</form>
<script type="text/javascript">
document.getElementById('scripts').value=document.getElementById('hidden').value;
function but()
{
var s=document.getElementById("scripts");
var t=document.getElementById("script");
var u=document.getElementById("examfeeid");
var v=document.getElementById("miscellanousid");
var total=t.value-s.value;
var other=u.value;
var mis=v.value;
document.getElementById("par").value=(total)*"1200"+(other)*"1"+(mis)*"1";
var fee=document.getElementById("par").value;
var receive=document.getElementById("met").value;
document.getElementById("miscellanousid1").value="0";
document.getElementById("examfeeid1").value="0";
var w=receive-fee;
if(w>0)
{
document.getElementById("miscellanousid1").value="0";
document.getElementById("examfeeid1").value=w;
}
else
{
document.getElementById("examfeeid1").value="0";
document.getElementById("miscellanousid1").value=-w;
}
} 
</script>
</body>
</html>