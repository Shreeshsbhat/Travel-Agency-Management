<?php
    include_once'database.php';
    $name=$_POST['pname'];
    $type=$_POST['ptype'];
    $desc=$_POST['description'];
    $dest=$_POST['destination'];
    $price=$_POST['price'];
    $tmode=$_POST['tmode'];
    $seats=$_POST['seats'];
    $prate=$_POST['prate'];
    $vtype=$_POST['vtype'];
    $date=$_POST['date'];
    
    // $del=$_POST['del'];


    $sql = "insert into package (`Package_Name`, `Package_Type`, `Description`, `Destination`, `Price`,  `Transport_Mode`, `Seats`, `Vehicle_Type`, `Positivity_Rate`, `Reservation_date`) values('$name','$type','$desc','$dest','$price','$tmode','$seats','$vtype','$prate','$date')";
    if (mysqli_query($conn, $sql)) {
      usleep(2*1000);
      echo '<a href="packform.php">Package Created Please Click Here to Go Back</a>';
      } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }

    ?>