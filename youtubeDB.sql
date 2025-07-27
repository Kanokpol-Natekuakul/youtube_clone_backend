
CREATE TABLE videos_long (
    video_id INT NOT NULL AUTO_INCREMENT,
    video_title VARCHAR(255) NOT NULL,
    video_description VARCHAR(255) NOT NULL,
    video_url VARCHAR(255) NOT NULL,
    video_thumbnail VARCHAR(255) NOT NULL,
    video_duration INT NOT NULL,
    video_created_at DATETIME NOT NULL,
    video_updated_at DATETIME NOT NULL,
    channel_id INT NOT NULL,
    PRIMARY KEY (video_id)
);

CREATE TABLE videos_short (
    video_id INT NOT NULL AUTO_INCREMENT,
    video_title VARCHAR(255) NOT NULL,
    video_description VARCHAR(255) NOT NULL,
    video_url VARCHAR(255) NOT NULL,
    video_thumbnail VARCHAR(255) NOT NULL,
    video_duration INT NOT NULL,
    video_created_at DATETIME NOT NULL,
    video_updated_at DATETIME NOT NULL,
    channel_id INT NOT NULL,
    PRIMARY KEY (video_id)
);


CREATE TABLE channels (
    channel_id INT NOT NULL AUTO_INCREMENT,
    channel_name VARCHAR(255) NOT NULL,
    channel_banner_url VARCHAR(255) NOT NULL,
    channel_username VARCHAR(255) NOT NULL,
    channel_description VARCHAR(255) NOT NULL,
    channel_profile_picture VARCHAR(255) NOT NULL,
    channel_created_at DATETIME NOT NULL,
    channel_updated_at DATETIME NOT NULL,
    PRIMARY KEY (channel_id)
);


CREATE TABLE channel_subscribe (
    channel_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (channel_id, user_id)
);


CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_profile_picture VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    user_created_at DATETIME NOT NULL,
    user_updated_at DATETIME NOT NULL,
    PRIMARY KEY (user_id)
);


CREATE TABLE comments (
    comment_id INT NOT NULL AUTO_INCREMENT,
    video_id INT NOT NULL,
    user_id INT NOT NULL,
    comment_text VARCHAR(255) NOT NULL,
    comment_created_at DATETIME NOT NULL,
    comment_updated_at DATETIME NOT NULL,
    PRIMARY KEY (comment_id)
);


CREATE TABLE popular (
    video_id INT NOT NULL,
    view_count INT NOT NULL,
    like_count INT NOT NULL,
    dislike_count INT NOT NULL,
    comment_count INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (video_id)
);

INSERT INTO `videos_short` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (1, 'Quick Python Tips', 'Learn essential Python tips in under 5 minutes.', 'https://www.example.com/short_py_tip1', 'https://placehold.co/1280x720/FF5733/FFFFFF?text=Python+Tip', 240, '2025-07-27 22:06:41', '2025-07-27 22:06:41', 1);
INSERT INTO `videos_short` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (2, 'CSS Flexbox in 3 Mins', 'Master CSS Flexbox basics quickly.', 'https://www.example.com/short_css_flex', 'https://placehold.co/1280x720/33FF57/FFFFFF?text=Flexbox', 180, '2025-07-27 22:06:41', '2025-07-27 22:06:41', 3);
INSERT INTO `videos_short` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (3, 'JavaScript Array Methods', 'A rapid overview of common JavaScript array methods.', 'https://www.example.com/short_js_array', 'https://placehold.co/1280x720/3357FF/FFFFFF?text=JS+Arrays', 300, '2025-07-27 22:06:41', '2025-07-27 22:06:41', 3);
INSERT INTO `videos_short` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (4, 'SQL Joins Explained', 'Understand different types of SQL joins in 2 minutes.', 'https://www.example.com/short_sql_join', 'https://placehold.co/1280x720/FF33A1/FFFFFF?text=SQL+Joins', 120, '2025-07-27 22:06:41', '2025-07-27 22:06:41', 2);
INSERT INTO `videos_short` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (5, 'Web Dev Setup in 1 Min', 'Get your web development environment ready fast.', 'https://www.example.com/short_web_setup', 'https://placehold.co/1280x720/A133FF/FFFFFF?text=Web+Setup', 60, '2025-07-27 22:06:41', '2025-07-27 22:06:41', 2);

INSERT INTO `videos_long` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (1, 'Introduction to Python', 'Description 1', 'https://www.example.com/video1', 'https://i.ytimg.com/vi/PGZ7QIKdumo/hqdefault.jpg?sqp=', 5400, '2025-07-27 20:57:52', '2025-07-27 20:57:52', 1);
INSERT INTO `videos_long` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (2, 'Java Programming', 'Description 2', 'https://www.example.com/video2', 'https://i.ytimg.com/vi/PGZ7QIKdumo/hqdefault.jpg?sqp=-oay', 7200, '2025-07-27 20:57:52', '2025-07-27 20:57:52', 2);
INSERT INTO `videos_long` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (3, 'BorntoExpert JavaScript', 'Description 3', 'https://www.example.com/video3', 'https://i.ytimg.com/vi/PGZ7QIKdumo/hqdefault.jpg?sqp=', 2730, '2025-07-27 20:57:52', '2025-07-27 20:57:52', 3);
INSERT INTO `videos_long` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (4, 'Frontend Developer', 'Description 4', 'https://www.example.com/video4', 'https://i.ytimg.com/vi/PGZ7QIKdumo/hqdefault.jpg?sqp=', 4500, '2025-07-27 20:57:52', '2025-07-27 20:57:52', 2);
INSERT INTO `videos_long` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (5, 'Backend Developer', 'Description 5', 'https://www.example.com/video5', 'https://i.ytimg.com/vi/PGZ7QIKdumo/hqdefault.jpg?sqp=-oay', 6600, '2025-07-27 20:57:52', '2025-07-27 20:57:52', 3);
INSERT INTO `videos_long` (`video_id`, `video_title`, `video_description`, `video_url`, `video_thumbnail`, `video_duration`, `video_created_at`, `video_updated_at`, `channel_id`) VALUES (6, 'Database Management Basics', 'Description 6', 'https://www.example.com/video6', 'https://i.ytimg.com/vi/some_new_thumbnail.jpg?sqp=', 3300, '2025-07-27 20:57:52', '2025-07-27 20:57:52', 1);

INSERT INTO `users` (`user_id`, `user_name`, `password`, `user_email`, `user_profile_picture`, `first_name`, `last_name`, `user_created_at`, `user_updated_at`) VALUES (1, 'aeff_borntodev', 'example_password', 'aeff@example.com', 'https://b2dmain-ruk.cdn.jelastic.net/wp-content/uploads/2022/11/293716698_354038076879969_395025437187682157_n-300x300.jpg', 'Sirasit', 'Boonklang', '2025-07-27 20:15:24', '2025-07-27 20:15:24');

INSERT INTO `popular` (`video_id`, `view_count`, `like_count`, `dislike_count`, `comment_count`, `created_at`, `updated_at`) VALUES (1, 800000, 40000, 1800, 1300, '2024-01-16 07:00:00', '2024-01-16 08:00:00');
INSERT INTO `popular` (`video_id`, `view_count`, `like_count`, `dislike_count`, `comment_count`, `created_at`, `updated_at`) VALUES (2, 1000000, 50000, 2000, 1500, '2024-01-16 08:30:00', '2024-01-16 09:45:00');
INSERT INTO `popular` (`video_id`, `view_count`, `like_count`, `dislike_count`, `comment_count`, `created_at`, `updated_at`) VALUES (3, 750000, 30000, 1500, 1200, '2024-01-16 10:00:00', '2024-01-16 11:15:00');
INSERT INTO `popular` (`video_id`, `view_count`, `like_count`, `dislike_count`, `comment_count`, `created_at`, `updated_at`) VALUES (4, 500000, 25000, 1000, 800, '2024-01-16 12:30:00', '2024-01-16 13:45:00');
INSERT INTO `popular` (`video_id`, `view_count`, `like_count`, `dislike_count`, `comment_count`, `created_at`, `updated_at`) VALUES (5, 900000, 45000, 1800, 1400, '2024-01-16 14:00:00', '2024-01-16 15:30:00');
INSERT INTO `popular` (`video_id`, `view_count`, `like_count`, `dislike_count`, `comment_count`, `created_at`, `updated_at`) VALUES (6, 1200000, 60000, 2400, 1800, '2024-01-16 16:00:00', '2024-01-16 17:30:00');

INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (1, 1, 1, 'Great introduction to Python! Very clear and concise.', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (2, 1, 1, 'This really helped me grasp the basics quickly. Thanks!', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (3, 2, 1, 'Java programming explained simply. Excellent tutorial!', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (4, 2, 1, 'I learned a lot about Java from this video. Highly recommend.', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (5, 3, 1, 'JavaScript array methods are so useful. Good examples!', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (6, 3, 1, 'Concise and to the point. Perfect for a quick refresher.', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (7, 4, 1, 'Frontend development setup was a breeze with this guide. Thanks!', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (8, 4, 1, 'Super fast and effective. My environment is ready!', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (9, 5, 1, 'Backend concepts made easy. Looking forward to more videos!', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (10, 5, 1, 'Very helpful for understanding server-side logic.', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (11, 6, 1, 'Database management basics were clearly covered. Good job!', '2025-07-27 22:18:29', '2025-07-27 22:18:29');
INSERT INTO `comments` (`comment_id`, `video_id`, `user_id`, `comment_text`, `comment_created_at`, `comment_updated_at`) VALUES (12, 6, 1, 'Finally, a simple explanation of SQL joins. Thank you!', '2025-07-27 22:18:29', '2025-07-27 22:18:29');


INSERT INTO `channels` (`channel_id`, `channel_name`, `channel_banner_url`, `channel_username`, `channel_description`, `channel_profile_picture`, `channel_created_at`, `channel_updated_at`) VALUES (1, 'borntomeme', 'borntomeme.com/meme_profile.jpg', '@borntomeme', 'borntomeme borntomemem1', 'borntomeme.com/meme_profile.jpg', '2025-07-27 20:59:39', '2025-07-27 20:59:39');
INSERT INTO `channels` (`channel_id`, `channel_name`, `channel_banner_url`, `channel_username`, `channel_description`, `channel_profile_picture`, `channel_created_at`, `channel_updated_at`) VALUES (2, 'TechInsights', 'techinsights.com/banner.jpg', '@techinsights', 'Deep dives into the latest technology trends.', 'techinsights.com/profile.jpg', '2025-07-27 20:59:39', '2025-07-27 20:59:39');
INSERT INTO `channels` (`channel_id`, `channel_name`, `channel_banner_url`, `channel_username`, `channel_description`, `channel_profile_picture`, `channel_created_at`, `channel_updated_at`) VALUES (3, 'CodeMastery', 'codemastery.net/banner.png', '@codemastery', 'Learn programming with expert tutorials.', 'codemastery.net/profile.png', '2025-07-27 20:59:39', '2025-07-27 20:59:39');


INSERT INTO `channel_subscribe` (`channel_id`, `user_id`) VALUES (1, 1);
INSERT INTO `channel_subscribe` (`channel_id`, `user_id`) VALUES (2, 1);
INSERT INTO `channel_subscribe` (`channel_id`, `user_id`) VALUES (3, 1);
