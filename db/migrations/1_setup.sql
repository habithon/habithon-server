DROP TABLE IF EXISTS userAccount;

CREATE TABLE userAccount (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password CHAR(60) NOT NULL
);

