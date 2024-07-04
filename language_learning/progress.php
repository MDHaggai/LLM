<?php
include 'db.php';

session_start();

if (!isset($_SESSION['user_id'])) {
    echo "You need to log in first.";
    exit;
}

$userId = $_SESSION['user_id'];

$result = $conn->query("SELECT * FROM progress WHERE user_id = $userId");

if ($result->num_rows > 0) {
    echo '<h2>Your Progress</h2>';
    echo '<ul class="list-group">';
    while ($row = $result->fetch_assoc()) {
        echo '<li class="list-group-item">';
        echo 'Language: ' . htmlspecialchars($row['language']) . ' - Score: ' . htmlspecialchars($row['score']);
        echo '</li>';
    }
    echo '</ul>';
} else {
    echo '<p>No progress recorded yet.</p>';
}

$conn->close();
?>
