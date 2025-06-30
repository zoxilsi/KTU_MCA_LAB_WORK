<?php
$user='root';
$db='student';
$password='';
$host='localhost';

$con=mysqli_connect($host,$user,$password,$db);
if(!$con){
die("connect error".mysqli_connect_error());
}

?>
