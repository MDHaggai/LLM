<?php
include '../db.php'; // Include the connection to the users database

$sql = "SELECT COUNT(*) AS count FROM users";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
echo $row['count'];

$conn->close();
?>
