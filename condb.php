<?php
    $serverdb = "localhost";
    $userdb = "root";
    $pwdb = "0841991921";
    $dbname = "dbmr";
    
    //Create Connection
    $condb = mysqli_connect($serverdb, $userdb, $pwdb, $dbname);

    //set utf8
    mysqli_query($condb, "SET NAMES 'utf8' ");
    


    if(!$condb){
        die("connection failed : " . mysqli_connect_error());
    }
?>