const quizData = [
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
        question: "Which month comes right before June?",
        a: "May",
        b: "September",
        c: "July",
        d: "August",
        correct: "a",
    },
    {
        question: "What time of day do we have breakfast?",
        a: "In The Afternoon",
        b: "In The Morning",
        c: "In The Evening",
        correct: "b",
    },
    // Add more questions as needed
];

const quiz = document.getElementById("quiz");
const answerEls = document.querySelectorAll(".answer");
const questionEl = document.getElementById("question");
const a_text = document.getElementById("a_text");
const b_text = document.getElementById("b_text");
const c_text = document.getElementById("c_text");
const d_text = document.getElementById("d_text");
const submitBtn = document.getElementById("submit");

let currentQuiz = 0;
let score = 0;

loadQuiz();

function loadQuiz() {
    deselectAnswers();
    const currentQuizData = quizData[currentQuiz];
    questionEl.innerText = currentQuizData.question;
    a_text.innerText = currentQuizData.a;
    b_text.innerText = currentQuizData.b;
    c_text.innerText = currentQuizData.c;
    d_text.innerText = currentQuizData.d;
}

function deselectAnswers() {
    answerEls.forEach((answerEl) => (answerEl.checked = false));
}

function getSelected() {
    let answer;
    answerEls.forEach((answerEl) => {
        if (answerEl.checked) {
            answer = answerEl.id;
        }
    });
    return answer;
}

submitBtn.addEventListener("click", () => {
    const answer = getSelected();
    if (answer) {
        const correctAnswer = quizData[currentQuiz].correct;
        if (answer === correctAnswer) {
            score++;
            document.getElementById(answer + '_text').style.backgroundColor = 'green';
        } else {
            document.getElementById(answer + '_text').style.backgroundColor = 'red';
            document.getElementById(correctAnswer + '_text').style.backgroundColor = 'green';
        }

        setTimeout(() => {
            currentQuiz++;
            if (currentQuiz < quizData.length) {
                loadQuiz();
            } else {
                quiz.innerHTML = `
                    <h2>You answered ${score}/${quizData.length} questions correctly</h2>
                    <button onclick="location.reload()">Reload</button>
                `;
            }
        }, 1000);
    }
});
