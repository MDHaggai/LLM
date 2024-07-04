function fetchNotifications() {
    fetch('get_notifications.php')
        .then(response => response.json())
        .then(data => {
            const notificationContainer = document.getElementById('notificationContainer');
            notificationContainer.innerHTML = '';

            data.forEach(notification => {
                const notificationItem = document.createElement('div');
                notificationItem.classList.add('alert', 'alert-info');
                notificationItem.innerText = notification.message;
                notificationItem.addEventListener('click', () => markAsRead(notification.id));
                notificationContainer.appendChild(notificationItem);
            });
        });
}

function markAsRead(notificationId) {
    fetch('mark_notification_read.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `notification_id=${notificationId}`,
    }).then(() => fetchNotifications());
}

setInterval(fetchNotifications, 5000); // Fetch notifications every 5 seconds
