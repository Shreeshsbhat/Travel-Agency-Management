<?php
$username = $_POST['username'];
$password = $_POST['password'];
if($username == 'admin' && $password == 'admin'){
    header("Location: dashboard.php");
}
else{
    header("Location: dashboard.php");
}