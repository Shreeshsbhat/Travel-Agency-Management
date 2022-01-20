<?php

    include_once 'database.php';
    $s=$_POST['B_ID'];
    mysqli_query($conn,"delete FROM transaction where B_ID ='$s'");
    mysqli_query($conn,"delete FROM booking where B_ID='$s'");
    usleep(2*1000);
    // header('location: 0');
    header('Location: dashboard.php');
    

?>