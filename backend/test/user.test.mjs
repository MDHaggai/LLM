import chai from 'chai';
import chaiHttp from 'chai-http';
import { app as server } from '../app.mjs'; // Ensure app.mjs exports app
import User from '../models/User.mjs';

chai.should();
chai.use(chaiHttp);

describe('User API', () => {
    beforeEach((done) => {
        User.deleteMany({}, (err) => { 
           done();           
        });        
    });

    describe('/POST register', () => {
        it('it should REGISTER a user', (done) => {
            let user = {
                username: "TestUser",
                email: "testuser@example.com",
                password: "password"
            };
            chai.request(server)
                .post('/api/users/register')
                .send(user)
                .end((err, res) => {
                    res.should.have.status(201);
                    res.text.should.equal('User registered');
                    done();
                });
        });
    });

    describe('/POST login', () => {
        it('it should LOGIN a user', (done) => {
            let user = new User({
                username: "TestUser",
                email: "testuser@example.com",
                password: "password"
            });
            user.save((err, user) => {
                chai.request(server)
                    .post('/api/users/login')
                    .send({ email: user.email, password: "password" })
                    .end((err, res) => {
                        res.should.have.status(200);
                        res.body.should.have.property('token');
                        done();
                    });
            });
        });
    });
});
