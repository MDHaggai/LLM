import chai from 'chai';
import chaiHttp from 'chai-http';
import { app as server } from '../app'; // Ensure `app.js` exports `app`
import Quiz from '../models/Quiz';

chai.should();
chai.use(chaiHttp);

describe('Quiz API', () => {
    beforeEach((done) => {
        Quiz.deleteMany({}, (err) => { 
           done();           
        });        
    });

    describe('/GET quiz', () => {
        it('it should GET a quiz by language', (done) => {
            let quiz = new Quiz({
                language: "spanish",
                questions: ["Question 1?", "Question 2?"]
            });
            quiz.save((err, quiz) => {
                chai.request(server)
                    .get('/api/quizzes/spanish')
                    .end((err, res) => {
                        res.should.have.status(200);
                        res.body.should.be.a('object');
                        res.body.should.have.property('language').eql('spanish');
                        res.body.should.have.property('questions').eql(["Question 1?", "Question 2?"]);
                        done();
                    });
            });
        });
    });
});
