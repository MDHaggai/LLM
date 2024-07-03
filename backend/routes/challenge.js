const express = require('express');
const router = express.Router();
const challengeController = require('../controllers/challengeController');

router.post('/create', challengeController.createChallenge);
router.post('/submit', challengeController.submitChallenge);
router.get('/:userId', challengeController.getChallenges);

module.exports = router;
