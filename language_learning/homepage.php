<?php
include 'db.php';
session_start();

if (!isset($_SESSION['name'])) {
    header('Location: index.php');
    exit();
}
?>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Language Learning App</title>
    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/css/bootstrap.min.css">
    <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
</head>
<body>
<!--header-->
<header id="site-header" class="fixed-top">
    <div class="container">
        <nav class="navbar navbar-expand-lg stroke px-0">
            <h1>
                <a class="navbar-brand" href="index.php">
                    <span class="fa fa-language"></span> Language Learning
                </a>
            </h1>
            <button class="navbar-toggler collapsed bg-gradient" type="button" data-toggle="collapse"
                data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                <span class="navbar-toggler-icon fa icon-close fa-times"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.php">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="services.php">Contact Admin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">View Progress</a>
                    </li>
                    <?php if (isset($_SESSION['name'])): ?>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Welcome, <?php echo htmlspecialchars($_SESSION['name']); ?></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">Logout</a>
                    </li>
                    <?php else: ?>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.php">Register</a>
                    </li>
                    <?php endif; ?>
                </ul>
            </div>
        </nav>
    </div>
</header>
<!--/header-->
<!-- banner section -->
<section id="home" class="w3l-banner py-5">
    <div id="particles-js"></div>
    <div class="container py-lg-5 py-md-4">
        <div class="align-items-center py-4">
            <div class="banner-content mt-5">
                <h3 class="mb-2">Welcome to Language Learning App</h3>
                <h3 class="">Learn and master new languages with <span>interactive quizzes and challenges.</span></h3>
                <a href="quiz.php" class="btn btn-lg btn-secondary mt-3">Get Started</a>
            </div>
        </div>
    </div>
</section>
<!-- //banner section -->
<!-- home page block1 -->
<section id="about" class="home-services py-5">
    <div class="container py-lg-3">
        <div class="row text-center">
            <div class="col-lg-4 col-sm-6">
                <div class="box-wrap">
                    <img src="assets/images/lan.png" class="img-fluid" alt="Learn New Languages">
                    <div class="box-wrap-grid mt-3">
                        <h4 class="title-small">Learn New Languages</h4> <br>
                        <p>Choose from a variety of languages to learn and master at your own pace.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mt-sm-0 mt-4">
                <div class="box-wrap">
                    <img src="assets/images/quiz.jpg" class="img-fluid" alt="Take Quizzes">
                    <div class="box-wrap-grid mt-3">
                        <h4 class="title-small">Take Quizzes</h4> <br>
                        <p>Test your knowledge with interactive quizzes and track your progress.</p>
                    </div>
                </div>
            </div>
            <br>
            <br>
            <div class="col-lg-4 col-sm-6 mt-lg-0 mt-4">
                <div class="box-wrap">
                    <img src="assets/images/chalenge.jpg" class="img-fluid" alt="Challenge Others"> 
                    <div class="box-wrap-grid mt-3"> 
                    
                        <h4 class="title-small">Challenge Others</h4> <br>
                        <p>Compete with friends and other users in language learning challenges.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //home page block1 -->

<section class="w3l-content-4 py-5">
    <div class="content-4-main py-lg-5 py-md-4">
        <div class="container pb-5">
            <h3 class="title-small mx-0 mb-5">Why Choose Us?</h3>
            <div class="content-info-in row">
                <div class="content-left col-lg-6">
                    <p>We focus on providing high-quality language learning experiences for users of all levels. Join us to improve your language skills in a fun and interactive way.</p>
                    <a href="about.php" class="btn btn-style btn-primary mt-md-5 mt-4">Learn More</a>
                </div>
                <div class="content-right col-lg-6 mt-lg-0 mt-5">
                    <p>Whether you're a beginner or an advanced learner, our platform offers resources and tools to help you achieve your language learning goals. Start today and see your progress!</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="home-grids" id="features">
    <div class="container">
        <div class="row bg-color-white text-center">
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="box-wrap">
                    <img src="assets/images/icon1.png" alt="" />
                    <div class="info mt-3">
                        <h4 class="title-small">Comprehensive Lessons</h4>
                        <p>Access a wide range of lessons covering various aspects of language learning.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="box-wrap border-grid">
                    <img src="assets/images/icon2.png" alt="" />
                    <div class="info mt-3">
                        <h4 class="title-small">Interactive Quizzes</h4>
                        <p>Engage in interactive quizzes to test and improve your knowledge.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="box-wrap">
                    <img src="assets/images/icon3.png" alt="" />
                    <div class="info mt-3">
                        <h4 class="title-small">Track Progress</h4>
                        <p>Monitor your learning progress and achievements with our tracking tools.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- testimonials -->
<section class="w3l-clients-1 py-5" id="testimonials">
    <div class="cusrtomer-layout py-5">
        <div class="container py-lg-5 py-md-4">
            <div class="heading align-self text-center">
                <h3 class="title-big mb-md-5 mb-4">What Our Users <span>Say</span></h3>
            </div>
            <div class="testimonial-row">
                <div id="owl-demo1" class="owl-two owl-carousel owl-theme mb-md-3 mb-5">
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <div class="test-img">
                                    <img src="assets/images/user1.jpg" class="img-fluid" alt="user-img">
                                </div>
                                <blockquote>
                                    <q>This app has significantly improved my language skills. The quizzes are engaging and the lessons are very comprehensive.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="peopl align-self">
                                        <h3>Jane Doe</h3>
                                        <p class="indentity">Language Learner</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <div class="test-img">
                                    <img src="assets/images/user2.jpg" class="img-fluid" alt="user-img">
                                </div>
                                <blockquote>
                                    <q>The challenges make learning fun and competitive. I love competing with my friends to see who can get the highest score.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="peopl align-self">
                                        <h3>John Smith</h3>
                                        <p class="indentity">Language Enthusiast</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <div class="test-img">
                                    <img src="assets/images/user3.jpg" class="img-fluid" alt="user-img">
                                </div>
                                <blockquote>
                                    <q>The progress tracking feature helps me stay motivated and on track with my learning goals. Highly recommend this app!</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="peopl align-self">
                                        <h3>Emily Johnson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <div class="test-img">
                                    <img src="assets/images/user4.jpg" class="img-fluid" alt="user-img">
                                </div>
                                <blockquote>
                                    <q>Great app with excellent content and a user-friendly interface. It's perfect for anyone looking to learn a new language.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="peopl align-self">
                                        <h3>Michael Brown</h3>
                                        <p class="indentity">Professional</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //testimonials -->

<!-- footer -->
<footer class="py-5">
    <div class="container py-md-3">
        <div class="footer-grids">
            <div class="footer-grid left">
                <h2 class="logo"><a href="index.php"><span class="fa fa-language"></span> Language Learning</a></h2>
            </div>
            <div class="middle">
                <p>© 2024 Language Learning. All Rights Reserved | Design by <a href="#">YourName</a></p>
            </div>
            <div class="right">
                <ul class="social">
                    <li><a href="#url"><span class="fa fa-facebook icon_facebook"></span></a></li>
                    <li><a href="#url"><span class="fa fa-twitter icon_twitter"></span></a></li>
                    <li><a href="#url"><span class="fa fa-linkedin icon_linkedin"></span></a></li>
                    <li><a href="#url"><span class="fa fa-instagram icon_instagram"></span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        &#10548;
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- /move top -->
</footer>
<!-- //footer -->

<!-- Common jquery plugin -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/theme-change.js"></script>
</body>
</html>
