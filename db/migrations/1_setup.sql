DROP TABLE IF EXISTS user_account;

CREATE TABLE user_account (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password CHAR(60) NOT NULL
);

