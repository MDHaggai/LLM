const Notification = require('../models/Notification');
const { io } = require('../app'); // Import io from app

exports.createNotification = async (userId, message) => {
    const notification = new Notification({ user: userId, message });
    await notification.save();
    io.emit(`notification-${userId}`, notification); // Emit the notification to the user
};

exports.getNotifications = async (req, res) => {
    const { userId } = req.params;
    try {
        const notifications = await Notification.find({ user: userId }).sort({ createdAt: -1 });
        res.status(200).json(notifications);
    } catch (error) {
        res.status(500).send('Server error');
    }
};

exports.markAsRead = async (req, res) => {
    const { notificationId } = req.params;
    try {
        const notification = await Notification.findById(notificationId);
        if (!notification) return res.status(404).send('Notification not found');
        notification.read = true;
        await notification.save();
        res.status(200).send('Notification marked as read');
    } catch (error) {
        res.status(500).send('Server error');
    }
};
