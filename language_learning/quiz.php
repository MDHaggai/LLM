<!DOCTYPE html>
<html lang="en">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Language Learning App</title>
    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/styles.css">
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
                        <a class="nav-link" href="services.php">contact admin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">view progress</a>
                    </li>
                   
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>

</head>
<body style="background-image: url('assets/images/bg.jpg'); background-size: cover; background-attachment: fixed;">
    <div class="container my-5">
        <div class="text-center mb-4 text-white">
            <h1>Choose Your Language</h1>
            <p>Select a language to start your quiz</p>
        </div>
        <div class="cards-container mx-auto">
            <!-- Language Cards -->
            <?php
            $languages = [
                ['name' => 'English', 'origin' => 'United Kingdom', 'image' => 'english.jpg', 'history' => 'English originated from the Anglo-Saxon kingdoms of England and spread worldwide.'],
                ['name' => 'French', 'origin' => 'France', 'image' => 'french.png', 'history' => 'French evolved from the Gallo-Romance dialects and is widely spoken around the world.'],
                ['name' => 'Spanish', 'origin' => 'Spain', 'image' => 'spanish.jpg', 'history' => 'Spanish developed from Vulgar Latin in the Iberian Peninsula.'],
                ['name' => 'German', 'origin' => 'Germany', 'image' => 'german.jpg', 'history' => 'German is a West Germanic language mainly spoken in Central Europe.'],
                ['name' => 'Russian', 'origin' => 'Russia', 'image' => 'russian.jpg', 'history' => 'Russian is an East Slavic language and the largest native language in Europe.'],
                ['name' => 'Chinese', 'origin' => 'China', 'image' => 'chinese.jpg', 'history' => 'Chinese is a group of language varieties, the most spoken being Mandarin.'],
                ['name' => 'Italian', 'origin' => 'Italy', 'image' => 'italian.jpg', 'history' => 'Italian is a Romance language derived from Latin and spoken mainly in Italy.']
            ];

            foreach ($languages as $language) {
                echo '
                <div class="card-wrapper">
                    <div class="card text-white bg-dark">
                        <img src="assets/images/' . $language['image'] . '" class="card-img-top" alt="' . $language['name'] . '">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title">' . $language['name'] . '</h5>
                            <p class="card-text">Origin: ' . $language['origin'] . '</p>
                            <p class="card-text">' . $language['history'] . '</p>
                            <a href="test_quiz.php?language=' . urlencode($language['name']) . '" class="btn btn-primary mt-auto">Take Quiz</a>
                        </div>
                    </div>
                </div>';
            }
            ?>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JS -->
    <script src="js/scripts.js"></script>
</body>
</html>
