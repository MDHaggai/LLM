<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $language = $_GET['language'];

    $stmt = $conn->prepare("SELECT questions FROM quizzes WHERE language = ?");
    $stmt->bind_param("s", $language);
    $stmt->execute();
    $stmt->bind_result($questions);
    $stmt->fetch();

    echo $questions;

    $stmt->close();
}
?>
