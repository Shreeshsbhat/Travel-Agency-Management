

<?php
require_once 'database.php';
$phone=$_POST['phone'];
$id=$_POST['id'];


$sql = "select * from client where Mobile = '$phone'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result, MYSQLI_NUM);
$sql2 = "select Price from package where P_ID = '$id'";
$result2 = mysqli_query($conn,$sql2);
$row2= mysqli_fetch_array($result2, MYSQLI_NUM);
$amt=$row2[0]*$row[5];

mysqli_query($conn,"insert into booking (`C_ID`, `Pack_ID`, `cost`) VALUES ('$row[0]','$id','$amt')");
usleep(10*1000);
$sql3 = "select B_ID from booking where C_ID = '$row[0]'";
$result3 = mysqli_query($conn,$sql3);
$row3 = mysqli_fetch_array($result3, MYSQLI_NUM);

mysqli_query($conn,"insert into transaction VALUES ($row[0],$row3[0],'net')");
usleep(2*1000);
    // header('location: 0');
    header('Location: dashboard.php');


// mysqli_free_result($result);
?>