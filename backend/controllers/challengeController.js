const Challenge = require('../models/Challenge');
const Quiz = require('../models/Quiz');
const User = require('../models/User');
const Notification = require('./notificationController');

exports.createChallenge = async (req, res) => {
    const { challengerId, opponentId, language } = req.body;
    try {
        const quiz = await Quiz.findOne({ language });
        if (!quiz) return res.status(404).send('Quiz not found');

        const challenger = await User.findById(challengerId);
        const opponent = await User.findById(opponentId);

        const challenge = new Challenge({
            challenger: challengerId,
            opponent: opponentId,
            language,
            questions: quiz.questions,
            status: 'pending'
        });

        await challenge.save();
        await Notification.createNotification(opponentId, `You have been challenged by ${challenger.username} in ${language}`);

        res.status(201).json(challenge);
    } catch (error) {
        res.status(500).send('Server error');
    }
};

exports.submitChallenge = async (req, res) => {
    const { challengeId, userId, score } = req.body;
    try {
        const challenge = await Challenge.findById(challengeId);
        if (!challenge) return res.status(404).send('Challenge not found');

        if (challenge.challenger.toString() === userId) {
            challenge.challengerScore = score;
        } else if (challenge.opponent.toString() === userId) {
            challenge.opponentScore = score;
        }

        if (challenge.challengerScore != null && challenge.opponentScore != null) {
            challenge.status = 'completed';
            const challenger = await User.findById(challenge.challenger);
            const opponent = await User.findById(challenge.opponent);
            await Notification.createNotification(challenge.challenger, `Your challenge against ${opponent.username} in ${language} has been completed`);
            await Notification.createNotification(challenge.opponent, `Your challenge against ${challenger.username} in ${language} has been completed`);
        }

        await challenge.save();
        res.status(200).json(challenge);
    } catch (error) {
        res.status(500).send('Server error');
    }
};

exports.getChallenges = async (req, res) => {
    const { userId } = req.params;
    try {
        const challenges = await Challenge.find({
            $or: [{ challenger: userId }, { opponent: userId }]
        }).populate('challenger opponent', 'username');

        res.status(200).json(challenges);
    } catch (error) {
        res.status(500).send('Server error');
    }
};
