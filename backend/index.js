import express from 'express';
import mongoose from 'mongoose';
import bodyParser from 'body-parser';
import cors from 'cors';

const app = express();
app.use(bodyParser.json());
app.use(cors());

mongoose.connect('mongodb://localhost:27017/languageLearning', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});

import userRoutes from './routes/user.js';
import quizRoutes from './routes/quiz.js';

app.use('/api/users', userRoutes);
app.use('/api/quizzes', quizRoutes);

app.listen(5000, () => {
    console.log('Server is running on port 5000');
});

export { app };