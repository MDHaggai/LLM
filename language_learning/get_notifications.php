<?php
include 'db.php';

session_start();

if (!isset($_SESSION['user_id'])) {
    echo json_encode([]);
    exit;
}

$userId = $_SESSION['user_id'];

$result = $conn->query("SELECT * FROM notifications WHERE user_id = $userId AND read = 0 ORDER BY created_at DESC");

$notifications = [];
while ($row = $result->fetch_assoc()) {
    $notifications[] = $row;
}

echo json_encode($notifications);

$conn->close();
?>
