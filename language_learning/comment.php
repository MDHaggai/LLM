<?php
include 'db.php';

session_start();

if (!isset($_SESSION['user_id'])) {
    echo "You need to log in first.";
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $postId = $_POST['post_id'];
    $userId = $_SESSION['user_id'];
    $content = $_POST['content'];

    $stmt = $conn->prepare("INSERT INTO comments (post_id, user_id, content) VALUES (?, ?, ?)");
    $stmt->bind_param("iis", $postId, $userId, $content);

    if ($stmt->execute()) {
        echo "Comment added successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}
?>
