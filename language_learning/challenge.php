<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $challengerId = $_SESSION['user_id'];
    $opponentId = $_POST['opponent_id'];
    $language = $_POST['language'];

    $stmt = $conn->prepare("SELECT questions FROM quizzes WHERE language = ?");
    $stmt->bind_param("s", $language);
    $stmt->execute();
    $stmt->bind_result($questions);
    $stmt->fetch();
    $stmt->close();

    $stmt = $conn->prepare("INSERT INTO challenges (challenger_id, opponent_id, language, questions) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("iiss", $challengerId, $opponentId, $language, $questions);

    if ($stmt->execute()) {
        echo "Challenge created successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}
?>
