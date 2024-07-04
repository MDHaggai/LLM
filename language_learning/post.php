<?php
include 'db.php';

session_start();

if (!isset($_SESSION['user_id'])) {
    echo "You need to log in first.";
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userId = $_SESSION['user_id'];
    $title = $_POST['title'];
    $content = $_POST['content'];

    $stmt = $conn->prepare("INSERT INTO posts (user_id, title, content) VALUES (?, ?, ?)");
    $stmt->bind_param("iss", $userId, $title, $content);

    if ($stmt->execute()) {
        echo "Post created successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}
?>
