<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "FPM";
$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn){
    die("Cannot connect to the database");

}
?>