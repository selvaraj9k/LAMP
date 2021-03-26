<!Doctype lamp>
<html>
<head>
<title>Addition</title>
</head>
<body>
<center><h1>Addition of two numbers</h1></center>
<form name="add" method="post">
Number1:<input type="text" name="num1" /><br>
number2:<input type="text" name="num2" /><br>
<input type="submit" name="add" value="add"/>
</form>
<?php
if(isset($_POST['add']))
{
	$num1=$_POST['num1'];
	$num2=$_POST['num2'];
	$sum=$num1+$num2;
	echo "Addition of Two numbers: ".$sum;
}
$servername="localhost";
$mysql_db="student";
$username="vidiyal";
$password="23-Apr-2001";

$conn = new mysqli($servername,$username,$password,$mysql_db);
if($conn -> connect_error)
{
	die("connection failed:".$conn -> connect_error);
}
$query = "insert into addition values(".$num1.",".$num2.",".$sum.")";
echo $query;
$conn->query($query);
$conn->close();
?>
</body>
</html>
