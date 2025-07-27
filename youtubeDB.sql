
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

-- เพิ่ม Foreign Key Constraints สำหรับตารางใหม่
-- ALTER TABLE comments 
-- ADD CONSTRAINT fk_comments_user 
-- FOREIGN KEY (user_id) REFERENCES users(user_id);

-- ALTER TABLE popular 
-- ADD CONSTRAINT fk_popular_video_long 
-- FOREIGN KEY (video_id) REFERENCES videos_long(video_id);

-- หมายเหตุ: สำหรับ video_id ใน comments อาจต้องสร้าง constraint แยกสำหรับ videos_long และ videos_short
-- หรือใช้วิธีอื่นในการจัดการ video_id ที่อาจอ้างอิงไปยังทั้งสองตาราง
-- ALTER TABLE videos_long 
-- ADD CONSTRAINT fk_videos_long_channel 
-- FOREIGN KEY (channel_id) REFERENCES channels(channel_id);

-- ALTER TABLE videos_short 
-- ADD CONSTRAINT fk_videos_short_channel 
-- FOREIGN KEY (channel_id) REFERENCES channels(channel_id);

-- ALTER TABLE channel_subscribe 
-- ADD CONSTRAINT fk_subscribe_channel 
-- FOREIGN KEY (channel_id) REFERENCES channels(channel_id);

-- ALTER TABLE channel_subscribe 
-- ADD CONSTRAINT fk_subscribe_user 
-- FOREIGN KEY (user_id) REFERENCES users(user_id);