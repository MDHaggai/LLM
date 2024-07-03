const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const cors = require('cors');
const http = require('http');
const { Server } = require('socket.io');

const app = express();
const server = http.createServer(app);
const io = new Server(server, {
    cors: {
        origin: '*',
        methods: ['GET', 'POST']
    }
});

app.use(bodyParser.json());
app.use(cors());

mongoose.connect('mongodb://localhost:27017/languageLearning', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});

const userRoutes = require('./routes/user');
const quizRoutes = require('./routes/quiz');
const progressRoutes = require('./routes/progress');
const challengeRoutes = require('./routes/challenge');
const forumRoutes = require('./routes/forum');
const notificationRoutes = require('./routes/notification');

app.use('/api/users', userRoutes);
app.use('/api/quizzes', quizRoutes);
app.use('/api/progress', progressRoutes);
app.use('/api/challenges', challengeRoutes);
app.use('/api/forums', forumRoutes);
app.use('/api/notifications', notificationRoutes);

// WebSocket connection handler
io.on('connection', (socket) => {
    console.log('a user connected');
    socket.on('disconnect', () => {
        console.log('user disconnected');
    });
});

server.listen(5000, () => {
    console.log('Server is running on port 5000');
});

module.exports = { app, io }; // Export the app and io for testing
