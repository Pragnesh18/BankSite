<?php
$servername = "rnr56s6e2uk326pj.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
// Enter your MySQL username below(default=root)
$username = "u4cxbq0r8w07fyve";
// Enter your MySQL password below
$password = "kisul6owdrdo2vy0";
$dbname = "w7s0qi7si2yzx33z";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    header("location:connection_error.php?error=$conn->connect_error");
    die($conn->connect_error);
}
?>
