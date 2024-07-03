const Quiz = require('../models/Quiz');

exports.getQuiz = async (req, res) => {
    const { language } = req.params;
    try {
        const quiz = await Quiz.findOne({ language });
        if (!quiz) return res.status(404).send('Quiz not found');
        res.status(200).json(quiz);
    } catch (error) {
        res.status(500).send('Server error');
    }
};

exports.submitQuiz = async (req, res) => {
    const { language, answers } = req.body;
    try {
        const quiz = await Quiz.findOne({ language });
        if (!quiz) return res.status(404).send('Quiz not found');

        let score = 0;
        quiz.questions.forEach((question, index) => {
            if (question.correctAnswer === answers[index]) {
                score += 1;
            }
        });

        const percentage = (score / quiz.questions.length) * 100;
        res.status(200).json({ score, percentage, questions: quiz.questions });
    } catch (error) {
        res.status(500).send('Server error');
    }
};
