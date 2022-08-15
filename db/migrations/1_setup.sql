DROP TABLE IF EXISTS user_account;

CREATE TABLE user_account (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password CHAR(60) NOT NULL
);

DROP TABLE IF EXISTS habit;

CREATE TABLE habit (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES user_account(id),
    habit VARCHAR(50) NOT NULL,
    streak INT NOT NULL,
    frequency VARCHAR(20) NOT NULL,
    last_completed DATE
);
