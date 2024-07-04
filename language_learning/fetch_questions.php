<?php
include 'db.php';

$sql = "SELECT id, question, option_a, option_b, option_c, option_d, correct_option FROM questions";
$result = $conn->query($sql);

$questions = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $questions[] = $row;
    }
}

$conn->close();

echo json_encode($questions);
?>
