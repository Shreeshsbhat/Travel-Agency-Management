<?php
include_once 'database.php';
    //Values from form
$myUsername = $_POST['phone'];
$password = $_POST['password'];

$hash=md5(trim($password));

$query = "select * FROM account WHERE username='$myUsername'";
$result = mysqli_query($conn, $query);
$count = mysqli_num_rows($result);

if($count == 1){
    $row = mysqli_fetch_array($result, MYSQLI_NUM);
    if($hash == $row[1]){
        usleep(2*1000);
        // echo '<h1><a href="dashboard.php">your password is correct click here to Go to dashboard</a>';
        mysqli_query($conn,"update ses set s= '$myUsername'");
        usleep(2*1000);
        header("Location: dashboard.php");

    }
    else{
        usleep(2*1000);
        echo "error";
        // echo '<a href="sign-in.html">your password is wrong click here to re-login</a></h1>';
        header("Location:sign-in2.html");

    }
    
} 
else{
    usleep(2*1000);
    echo "error";
    // echo '<a href="sign-in.html">your password is wrong click here to re-login</a></h1>';
    header("Location:sign-in2.html");

}
?>
      


