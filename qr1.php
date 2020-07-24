<?php
include "connect.php";

if(isset($_POST['IMEI']) || isset($_POST['qrResult']))
{
	$IMEI = $_POST['IMEI'];
	$qrResult = $_POST['qrResult'];
	echo $IMEI;
	echo $qrResult;
$sql = "insert into appresult(imei , qrresult) values( '$IMEI' , '$qrResult')";
mysqli_query($conn , $sql);
}

 else
{
echo "failing";
}  	
	 session_start();
	$username = $_SESSION['uname'];
    $password = $_SESSION['password'];	
	
	$sql2 =  "SELECT imei FROM customer WHERE uname='".$username."' AND pwd='".$password."'";
    $result1 = $conn->query($sql2);
    $row1 = $result1->fetch_assoc();
	$imeinumb = $row1['imei'];	
	
	$sql3 =  "SELECT random FROM customer WHERE uname='".$username."' AND pwd='".$password."'";
    $result2 = $conn->query($sql3);
    $row2 = $result2->fetch_assoc();
	$randnumb = $row2['random'];
		
	$que = "select MAX(serial_no) as serial_no from `appresult` ";
	$resultt = mysqli_query($conn , $que);
	$rows = mysqli_fetch_array($resultt , MYSQLI_BOTH);
	$maxserial = $rows['serial_no'];
	
	$sql4 =  "SELECT imei FROM appresult WHERE serial_no=$maxserial";
    $result3 = $conn->query($sql4);
    $row3 = $result3->fetch_assoc();
	$appimei = $row3['imei'];	

	$sql5 =  "SELECT qrresult FROM appresult WHERE serial_no=$maxserial";
    $result4 = $conn->query($sql5);
    $row4 = $result4->fetch_assoc();
	$qrRes = $row4['qrresult'];
		
	if($imeinumb==$appimei && $randnumb==$qrRes)
	{
		$query = "UPDATE customer set result=1 WHERE uname='".$username."' AND pwd='".$password."'";
		$result1 = mysqli_query($conn , $query);
		header("location:validation.php");
	}
	else{
		echo "Authentication failed";
	}

 ?>