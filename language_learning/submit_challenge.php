<?php
include 'db.php';

session_start();

if (!isset($_SESSION['user_id'])) {
    echo "You need to log in first.";
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $challengeId = $_POST['challenge_id'];
    $userId = $_SESSION['user_id'];
    $score = $_POST['score'];

    $stmt = $conn->prepare("SELECT challenger_id, opponent_id FROM challenges WHERE id = ?");
    $stmt->bind_param("i", $challengeId);
    $stmt->execute();
    $stmt->bind_result($challengerId, $opponentId);
    $stmt->fetch();
    $stmt->close();

    if ($userId == $challengerId) {
        $stmt = $conn->prepare("UPDATE challenges SET challenger_score = ?, status = 'completed' WHERE id = ?");
        $stmt->bind_param("ii", $score, $challengeId);
    } else {
        $stmt = $conn->prepare("UPDATE challenges SET opponent_score = ?, status = 'completed' WHERE id = ?");
        $stmt->bind_param("ii", $score, $challengeId);
    }

    if ($stmt->execute()) {
        echo "Challenge submitted successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}
?>
