<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userId = $_POST['user_id'];
    $message = $_POST['message'];

    $stmt = $conn->prepare("INSERT INTO notifications (user_id, message) VALUES (?, ?)");
    $stmt->bind_param("is", $userId, $message);

    if ($stmt->execute()) {
        echo "Notification sent successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}
?>
