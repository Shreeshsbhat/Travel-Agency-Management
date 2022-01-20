<?php
require_once 'database.php';
$EID=$_POST['EID'];
$CID=$_POST['CID'];
$ans=$_POST['ans'];
$date=$_POST['date'];

$sql = "update enquiry set Emp_ID = '$EID', Remark = '$ans' WHERE C_ID='$CID' and Remark like '0'";
$sql2= "insert into answer values('$date','$EID')";
mysqli_query($conn, $sql);

mysqli_query($conn, $sql2);
echo '<h1><a href="billing.php">You have Answered the Query . Click here to Go back</a>';
?>

