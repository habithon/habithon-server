DROP TABLE IF EXISTS habit;
DROP TABLE IF EXISTS user_account;

CREATE TABLE user_account (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password CHAR(60) NOT NULL,
    full_name VARCHAR(100),
    email VARCHAR(50) 
);

CREATE TABLE habit (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES user_account(id),
    image_url VARCHAR(100),
    habit VARCHAR(50) NOT NULL,
    streak INT DEFAULT 0,
    frequency VARCHAR(20) NOT NULL,
    last_completed TIMESTAMPTZ
);
