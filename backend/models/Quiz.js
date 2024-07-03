const mongoose = require('mongoose');

const questionSchema = new mongoose.Schema({
    questionText: String,
    options: [String],
    correctAnswer: String,
    type: { type: String, enum: ['multiple-choice', 'true-false'], default: 'multiple-choice' },
    hint: String,
    explanation: String,
    timeLimit: { type: Number, default: 30 } // time limit in seconds
});

const quizSchema = new mongoose.Schema({
    language: String,
    questions: [questionSchema]
});

module.exports = mongoose.model('Quiz', quizSchema);
