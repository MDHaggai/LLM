const express = require('express');
const router = express.Router();
const quizController = require('../controllers/quizController');

router.get('/:language', quizController.getQuiz);
router.post('/submit', quizController.submitQuiz);

module.exports = router;
