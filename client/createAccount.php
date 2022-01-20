<?php
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$mobile=$_POST['mobile'];
$email=$_POST['mail'];
$people=$_POST['people'];
$vaccert=$_POST['certificate'];
$budget=$_POST['budget'];
$password=$_POST['password'];
$hash=md5($password);
if(isset($_POST['vaccinated']) && $_POST['vaccinated'] == 'Yes') 
{
    $vacc = 1;
}
else
{
    $vacc = 0;
}
if(isset($_POST['report']) &&  $_POST['report'] == 'Yes') 
{
    $report = "Negative";
}
else
{
    $report = 0;
}
require_once('database.php');



$sql="insert into client (`FNAME`, `LNAME`, `Mobile`, `E_mail`, `People`, `Vaccination`, `Vac_Certificate`, `COVID_19_Report`, `Budget`) VALUES ('$fname', '$lname', '$mobile', '$email', '$people', '$vacc', '$vaccert', '$report', '$budget')";
mysqli_query($conn,$sql);
// mysqli_query($conn, $sql);
mysqli_query($conn,"insert into Account values('$mobile','$hash')");

usleep(10*1000);
echo '<a href="sign-in.html">Account Created Please Click Here to login</a>';

?>