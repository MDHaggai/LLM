<?php
include 'db_connect.php'; // Include the connection to the quizzes database

$sql = "SELECT COUNT(*) AS count FROM English 
        UNION SELECT COUNT(*) FROM French 
        UNION SELECT COUNT(*) FROM Spanish 
        UNION SELECT COUNT(*) FROM German 
        UNION SELECT COUNT(*) FROM Russian 
        UNION SELECT COUNT(*) FROM Chinese 
        UNION SELECT COUNT(*) FROM Italian";
$result = $conn->query($sql);
$total = 0;
while($row = $result->fetch_assoc()) {
    $total += $row['count'];
}
echo $total;

$conn->close();
?>
