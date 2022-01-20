<?php
require_once 'database.php';

$ans=$_POST['ans'];
$sub=$_POST['sub'];
$date=$_POST['date'];

                $sql = "select * from ses";
                $result = mysqli_query($conn,$sql);
                $row = mysqli_fetch_array($result, MYSQLI_NUM);
                $ph=$row[0];
                $sql = "select C_ID from client where Mobile = '$ph'";
                $result = mysqli_query($conn,$sql);
                $row = mysqli_fetch_array($result, MYSQLI_NUM);

$sql = "insert INTO enquiry values ('1000003','$row[0]','$sub','$ans','0')";
$sql2 = "insert into register values('$date','$row[0]')";
mysqli_query($conn, $sql);

mysqli_query($conn, $sql2);
echo '<h1><a href="billing.php">Your Question has been submitted Click here to Go Back</a>';
?>

