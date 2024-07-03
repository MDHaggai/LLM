const express = require('express');
const router = express.Router();
const forumController = require('../controllers/forumController');

router.post('/posts', forumController.createPost);
router.get('/posts', forumController.getPosts);
router.post('/comments', forumController.createComment);
router.get('/comments/:postId', forumController.getComments);

module.exports = router;
