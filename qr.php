<?php	
    include "header.php";
?>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home_style.css">
</head>

<body>
    <div class="flex-container-background">
        <div class="flex-container">
            <div class="flex-item-0">
                <h1 id="form_header">Your Bank at Your Fingertips.</h1>
            </div>
        </div>

        <div class="flex-container">
            <div class="flex-item-1">
                <form action="customer_login_action.php" method="post">
                    <div class="flex-item-login">
                        <h2>Welcome</h2>
                    </div>
	<div>				
<?php
include "connect.php";
include "qrlib\qrlib.php";


if(isset($_POST['cust_uname']))
{
        $_SESSION['cust_uname'] = $_POST['cust_uname'];
}
	session_start();
	$username = $_SESSION['uname'];
    $password = $_SESSION['password'];

    $sql0 =  "SELECT imei FROM customer WHERE uname='".$username."' AND pwd='".$password."'";
    $result = $conn->query($sql0);
    $row = $result->fetch_assoc();
	$rand = rand(100000,999999);
	
	$sql1 = "UPDATE customer set random = $rand WHERE uname='".$username."' AND pwd='".$password."' ";
	$res = mysqli_query($conn , $sql1);
	QRcode::png($rand, 'test.png', 'L', 4, 2);
	
?>
</div>
				<div style="text-align: center">
				
                    <img src="test.png">
				
                    <div class="flex-item">
                        <h3>Scan the QRcode with your registered mobile to login</h3>
                    </div>
					<button  type="button" class="btn btn-primary" onclick='location.href="qr1.php";'>SUBMIT</button>
					</div>
                </form>
            </div>
        </div>
   </div>
</body>
</html>
