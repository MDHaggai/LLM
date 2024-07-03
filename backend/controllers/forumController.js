const Post = require('../models/Post');
const Comment = require('../models/Comment');

exports.createPost = async (req, res) => {
    const { userId, title, content } = req.body;
    try {
        const post = new Post({ user: userId, title, content });
        await post.save();
        res.status(201).json(post);
    } catch (error) {
        res.status(500).send('Server error');
    }
};

exports.getPosts = async (req, res) => {
    try {
        const posts = await Post.find().populate('user', 'username');
        res.status(200).json(posts);
    } catch (error) {
        res.status(500).send('Server error');
    }
};

exports.createComment = async (req, res) => {
    const { userId, postId, content } = req.body;
    try {
        const comment = new Comment({ user: userId, post: postId, content });
        await comment.save();
        res.status(201).json(comment);
    } catch (error) {
        res.status(500).send('Server error');
    }
};

exports.getComments = async (req, res) => {
    const { postId } = req.params;
    try {
        const comments = await Comment.find({ post: postId }).populate('user', 'username');
        res.status(200).json(comments);
    } catch (error) {
        res.status(500).send('Server error');
    }
};
