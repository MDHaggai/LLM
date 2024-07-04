<?php
include 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $language = $_POST['language'];
    $level = $_POST['level'];
    $question = $_POST['question'];
    $answer = $_POST['answer'];

    $stmt = $conn->prepare("INSERT INTO $language (level, question, answer) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $level, $question, $answer);

    if ($stmt->execute()) {
        echo "Quiz question uploaded successfully!";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
