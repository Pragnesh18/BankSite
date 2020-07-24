<?php 
include "easter_egg.php"; 

	//$_SESSION['user'] = $_POST["uname"];
	//$_SESSION['pass'] = $_POST["pass"];
	
	//session_start();
	$username = $_SESSION['uname'];
    $password = $_SESSION['password'];
	
	
	$sql2 =  "SELECT imei FROM customer WHERE uname='".$username."' AND pwd='".$password."'";
    $result1 = $conn->query($sql2);
    $row1 = $result1->fetch_assoc();
	$imeinumb = $row1['imei'];
	//echo $imeinumb;
	
	$sql3 =  "SELECT random FROM customer WHERE uname='".$username."' AND pwd='".$password."'";
    $result2 = $conn->query($sql3);
    $row2 = $result2->fetch_assoc();
	$randnumb = $row2['random'];
	//echo $randnumb;
	
	$sql4 =  "SELECT imei FROM app";
    $result3 = $conn->query($sql4);
    $row3 = $result3->fetch_assoc();
	$appimei = $row3['imei'];
	//echo $appimei;

	$sql5 =  "SELECT qrRes FROM app";
    $result4 = $conn->query($sql5);
    $row4 = $result4->fetch_assoc();
	$qrRes = $row4['qrRes'];
	//echo $qrRes;
	
	if($imeinumb==$appimei)
	{
		$query = "UPDATE customer set result=1 WHERE uname='".$username."' AND pwd='".$password."'";
		$result1 = mysqli_query($conn , $query);
		header("location:validation.php");
	}
	else{
		echo "not going on next page";
	}
	

?>