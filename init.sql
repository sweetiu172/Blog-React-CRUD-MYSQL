USE blog_posts;

CREATE TABLE IF NOT EXISTS posts(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title varchar(255),
    post_text varchar(255),
    user_name varchar(255),
    likes int default 0
    
); 