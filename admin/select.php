<?php
function sel($sql){ 
                $servername = "localhost:3306";
                $username = "root";
                $password = "";
                
                // Create connection
                $conn = new mysqli($servername, $username, $password);
                mysqli_select_db($conn, "travelagency");
                
                // Check connection
                if ($conn->connect_error) {
                  die("Connection failed: " . $conn->connect_error);
                }
                
                $result = mysqli_query($conn,$sql);
                $all_property = array(); 

                
                echo '<table class="data-table">
                        <tr class="data-heading">';  
                while ($property = mysqli_fetch_field($result)) {
                                   echo '<th style="color:Tomato;">' . $property->name . '</th>';  
                    array_push($all_property, $property->name);  
                }
                echo '</tr>'; 


                while ($row = mysqli_fetch_array($result)) {
                    echo "<tr>";
                    foreach ($all_property as $item) {
                    echo '<td>' . $row[$item] . '</td>'; 
                    }
                      echo '</tr>';
                    }
                    echo "</table>";
                }
                
                // function del($s,$link){
                //   $servername = "localhost:3306";
                //   $username = "root";
                //   $password = "";
                  
                //   // Create connection
                //   $conn = new mysqli($servername, $username, $password);
                //   mysqli_select_db($conn, "travelagency");
                  
                //   // Check connection
                //   if ($conn->connect_error) {
                //     die("Connection failed: " . $conn->connect_error);
                //   }
                //   mysqli_query($s);
                //   usleep(10*1000);
                //   header("Location : $link );   
                // }
?>