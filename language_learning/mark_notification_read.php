<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $notificationId = $_POST['notification_id'];

    $stmt = $conn->prepare("UPDATE notifications SET read = 1 WHERE id = ?");
    $stmt->bind_param("i", $notificationId);

    if ($stmt->execute()) {
        echo "Notification marked as read";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}
?>
