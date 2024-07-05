<?php
session_start();
require 'dashboard/db_connect.php';

if (!empty($_SESSION['name'])) {
    $right_answer = 0;
    $wrong_answer = 0;
    $unanswered = 0; 
  
    $keys = array_keys($_POST);
    $order = join(",", $keys);
   
    $language = htmlspecialchars($_GET['language'] ?? 'Language');
    $languageTestTable = $language . '_Test';

    $stmt = $con->prepare("SELECT id, answer FROM $languageTestTable WHERE id IN($order) ORDER BY FIELD(id, $order)");
    $stmt->execute();
    $response = $stmt->get_result();

    while ($result = $response->fetch_assoc()) {
        if ($result['answer'] == $_POST[$result['id']]) {
            $right_answer++;
        } else if ($_POST[$result['id']] == 5) {
            $unanswered++;
        } else {
            $wrong_answer++;
        }
    }

    $name = $_SESSION['name'];  
    $stmt = $con->prepare("UPDATE users SET score=? WHERE user_name=?");
    $stmt->bind_param("is", $right_answer, $name);
    $stmt->execute();
    $stmt->close();
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Responsive Quiz Application Using PHP, MySQL, jQuery, Ajax and Twitter Bootstrap</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/css/bootstrap.min.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <header>
            <p class="text-center">
                Welcome <?php echo $_SESSION['name']; ?>
            </p>
        </header>
        <div class="container result">
            <div class="row"> 
                <div class='result-logo'>
                    <img src="image/Quiz_result.png" class="img-responsive"/>
                </div>    
            </div>  
            <hr>   
            <div class="row"> 
                <div class="col-xs-18 col-sm-9 col-lg-9"> 
                    <div class='result-logo1'>
                        <img src="image/cat.GIF" class="img-responsive"/>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-3 col-lg-3"> 
                    <a href="index.php" class='btn btn-success'>Start new Quiz!!!</a>                   
                    <a href="logout.php" class='btn btn-success'>Logout</a>
                    <div style="margin-top: 30%">
                        <p>Total no. of right answers : <span class="answer"><?php echo $right_answer; ?></span></p>
                        <p>Total no. of wrong answers : <span class="answer"><?php echo $wrong_answer; ?></span></p>
                        <p>Total no. of Unanswered Questions : <span class="answer"><?php echo $unanswered; ?></span></p>                   
                    </div> 
                </div>
            </div>    
        </div>
        <footer>
            <p class="text-center" id="foot">
                &copy; <a href="http://fewpress.com/" target="_blank">FewPress.com</a>2014
            </p>
        </footer>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<?php 
} else {
    header('Location: index.php');
}
?>
