<?php
include 'db.php';

$questionId = $_POST['questionId'];
$selectedOption = $_POST['selectedOption'];

$sql = "SELECT correct_option FROM questions WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $questionId);
$stmt->execute();
$stmt->bind_result($correctOption);
$stmt->fetch();
$stmt->close();

$response = array();
if ($selectedOption == $correctOption) {
    $response['correct'] = true;
} else {
    $response['correct'] = false;
    $response['correctOption'] = $correctOption;
}

$conn->close();

echo json_encode($response);
?>
