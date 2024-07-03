const mongoose = require('mongoose');

const challengeSchema = new mongoose.Schema({
    challenger: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
    opponent: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
    language: String,
    questions: Array,
    challengerScore: Number,
    opponentScore: Number,
    status: { type: String, enum: ['pending', 'completed'], default: 'pending' }
});

module.exports = mongoose.model('Challenge', challengeSchema);
