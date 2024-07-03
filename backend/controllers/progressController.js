const User = require('../models/User');

const awardAchievementsAndBadges = (user) => {
    let achievements = [];
    let badges = [];
    if (user.progress) {
        for (let [language, score] of user.progress.entries()) {
            if (score >= 100) {
                achievements.push(`Completed ${language}`);
            }
            if (score >= 50) {
                badges.push(`${language} Intermediate`);
            }
            if (score >= 75) {
                badges.push(`${language} Advanced`);
            }
        }
    }
    user.achievements = achievements;
    user.badges = badges;
};

exports.updateProgress = async (req, res) => {
    const { userId, language, score } = req.body;
    try {
        let user = await User.findById(userId);
        if (!user) return res.status(404).send('User not found');
        if (!user.progress) user.progress = {};
        user.progress.set(language, score);
        awardAchievementsAndBadges(user);
        await user.save();
        res.status(200).send('Progress updated');
    } catch (error) {
        res.status(500).send('Server error');
    }
};

exports.getProgress = async (req, res) => {
    const { userId } = req.params;
    try {
        let user = await User.findById(userId);
        if (!user) return res.status(404).send('User not found');
        awardAchievementsAndBadges(user);
        res.status(200).json(user);
    } catch (error) {
        res.status(500).send('Server error');
    }
};
