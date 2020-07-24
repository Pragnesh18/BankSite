<?php

include "connect.php";

while(1)
{
	session_start();	
	$user = $_SESSION['uname'];
    $pass = $_SESSION['password'];

    $sql0 =  "SELECT result FROM customer WHERE uname='".$user."' AND pwd='".$pass."'";
    $res = $conn->query($sql0);
    $row = $res->fetch_assoc();
	$ans = $row['result'];
	
	if($ans==1)
	{
		header("location:customer_home.php");
	}
}