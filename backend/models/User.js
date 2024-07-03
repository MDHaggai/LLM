const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
    username: String,
    email: String,
    password: String,
    progress: {
        type: Map,
        of: Number
    },
    achievements: [String],
    badges: [String]
});

module.exports = mongoose.model('User', userSchema);
