<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$db_name = 'language_learning';

$con = new mysqli($host, $user, $pass, $db_name);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
?>
