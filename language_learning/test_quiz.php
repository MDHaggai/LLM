<?php
session_start();
if (!isset($_SESSION['name'])) {
    header('Location: index.php');
    exit();
}

$language = htmlspecialchars($_GET['language'] ?? 'Language');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $language; ?> Quiz</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('bg.jpg');
            background-size: cover;
        }
        .quiz-container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        .quiz-header {
            margin-bottom: 20px;
        }
        .quiz-header h2 {
            margin: 0;
            font-size: 1.2em;
            color: #009688;
        }
        .quiz-question {
            margin-bottom: 20px;
        }
        .quiz-options {
            list-style: none;
            padding: 0;
        }
        .quiz-options li {
            margin-bottom: 10px;
        }
        .quiz-options input[type="radio"] {
            display: none;
        }
        .quiz-options label {
            display: block;
            padding: 10px;
            background-color: #e0e0e0;
            border-radius: 5px;
            cursor: pointer;
        }
        .quiz-options input[type="radio"]:checked + label {
            background-color: #bdbdbd;
        }
        .quiz-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .quiz-footer button {
            padding: 10px 20px;
            background-color: #009688;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .quiz-footer button:hover {
            background-color: #00796b;
        }
        .quiz-pagination {
            display: flex;
            gap: 5px;
        }
        .quiz-pagination div {
            width: 20px;
            height: 20px;
            background-color: #e0e0e0;
            border-radius: 50%;
        }
        .quiz-pagination .active {
            background-color: #009688;
        }
    </style>
</head>
<body>

<div class="quiz-container">
    <div class="quiz-header">
        <h2 id="question-header">Question 1 of 8</h2>
    </div>
    <div class="quiz-question">
        <p id="question-text">Which month comes right before June?</p>
    </div>
    <ul class="quiz-options" id="quiz-options">
        <li>
            <input type="radio" id="option1" name="quiz" value="a">
            <label for="option1" id="option1_text">July</label>
        </li>
        <li>
            <input type="radio" id="option2" name="quiz" value="b">
            <label for="option2" id="option2_text">May</label>
        </li>
        <li>
            <input type="radio" id="option3" name="quiz" value="c">
            <label for="option3" id="option3_text">September</label>
        </li>
        <li>
            <input type="radio" id="option4" name="quiz" value="d">
            <label for="option4" id="option4_text">August</label>
        </li>
    </ul>
    <div class="quiz-footer">
        <button id="nextButton">Next</button>
        <div class="quiz-pagination" id="quiz-pagination">
            <div class="active"></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
</div>

<script>
    const quizData = [
        {
            question: "Which month comes right before June?",
            a: "July",
            b: "May",
            c: "September",
            d: "August",
            correct: "b",
        },
        {
            question: "What is 22 + 6?",
            a: "56",
            b: "28",
            c: "16",
            d: "99",
            correct: "b",
        },
        {
            question: "What color is a banana?",
            a: "Blue",
            b: "Red",
            c: "Yellow",
            d: "White",
            correct: "c",
        },
        {
            question: "3 + 4 = 7?",
            a: "True",
            b: "False",
            correct: "a",
        },
        {
            question: "What time of day do we have breakfast?",
            a: "In The Afternoon",
            b: "In The Morning",
            c: "In The Evening",
            correct: "b",
        },
        {
            question: "Which planet is known as the Red Planet?",
            a: "Earth",
            b: "Mars",
            c: "Jupiter",
            d: "Saturn",
            correct: "b",
        },
        {
            question: "What is the capital of France?",
            a: "Berlin",
            b: "Madrid",
            c: "Paris",
            d: "Lisbon",
            correct: "c",
        },
        {
            question: "Which is the largest ocean on Earth?",
            a: "Atlantic Ocean",
            b: "Indian Ocean",
            c: "Arctic Ocean",
            d: "Pacific Ocean",
            correct: "d",
        }
    ];

    let currentQuiz = 0;
    let score = 0;

    const questionHeader = document.getElementById('question-header');
    const questionText = document.getElementById('question-text');
    const quizOptions = document.getElementById('quiz-options');
    const nextButton = document.getElementById('nextButton');
    const pagination = document.getElementById('quiz-pagination').children;

    function loadQuiz() {
        deselectAnswers();
        const currentQuizData = quizData[currentQuiz];
        questionHeader.innerText = `Question ${currentQuiz + 1} of ${quizData.length}`;
        questionText.innerText = currentQuizData.question;
        document.getElementById('option1_text').innerText = currentQuizData.a;
        document.getElementById('option2_text').innerText = currentQuizData.b;
        document.getElementById('option3_text').innerText = currentQuizData.c;
        document.getElementById('option4_text').innerText = currentQuizData.d;
    }

    function deselectAnswers() {
        document.querySelectorAll('.quiz-options input').forEach((el) => {
            el.checked = false;
            el.disabled = false;
        });
        document.querySelectorAll('.quiz-options label').forEach((el) => el.style.backgroundColor = '#e0e0e0');
    }

    function getSelected() {
        let answer;
        document.querySelectorAll('.quiz-options input').forEach((el) => {
            if (el.checked) {
                answer = el.value;
            }
        });
        return answer;
    }

    function disableOptions() {
        document.querySelectorAll('.quiz-options input').forEach((el) => el.disabled = true);
    }

    nextButton.addEventListener('click', () => {
        const answer = getSelected();
        if (answer) {
            const correctAnswer = quizData[currentQuiz].correct;
            const selectedLabel = document.querySelector(`label[for=option${answer}]`);
            if (answer === correctAnswer) {
                score++;
                selectedLabel.style.backgroundColor = 'green';
            } else {
                selectedLabel.style.backgroundColor = 'red';
                document.querySelector(`label[for=option${correctAnswer}]`).style.backgroundColor = 'green';
            }

            disableOptions();

            setTimeout(() => {
                currentQuiz++;
                if (currentQuiz < quizData.length) {
                    pagination[currentQuiz - 1].classList.remove('active');
                    pagination[currentQuiz].classList.add('active');
                    loadQuiz();
                } else {
                    displayResults();
                }
            }, 1000);
        } else {
            alert("Please select an answer before proceeding.");
        }
    });

    function displayResults() {
        let resultText = '';
        if (score <= 2) {
            resultText = 'Beginner';
        } else if (score <= 5) {
            resultText = 'Intermediate';
        } else {
            resultText = 'Professional';
        }

        document.querySelector('.quiz-container').innerHTML = `
            <h2>You answered ${score}/${quizData.length} questions correctly</h2>
            <p>You are a ${resultText} learner</p>
            <button onclick="location.reload()">Reload</button>
        `;
    }

    loadQuiz();
</script>

</body>
</html>
