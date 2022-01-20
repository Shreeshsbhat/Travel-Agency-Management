<?php

    include_once 'database.php';
    $s=$_POST['del'];
    mysqli_query($conn,"delete FROM package where P_ID ='$s'");
    // mysqli_query($conn,"delete FROM booking where B_ID='$s'");
    usleep(2*1000);
    // header('location: 0');
    header('Location: packform.php');
    

?>