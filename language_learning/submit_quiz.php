<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userId = $_POST['user_id'];
    $language = $_POST['language'];
    $answers = $_POST['answers'];
    // Assume score calculation logic here
    $score = count($answers); // Placeholder score calculation

    $stmt = $conn->prepare("INSERT INTO progress (user_id, language, score) VALUES (?, ?, ?)");
    $stmt->bind_param("isi", $userId, $language, $score);

    if ($stmt->execute()) {
        echo "Quiz submitted successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}
?>
