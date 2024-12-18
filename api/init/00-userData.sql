DROP TABLE IF EXISTS UserData CASCADE;

CREATE TABLE UserData (
    FOREIGN KEY (user_id) REFERENCES Users (id) PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL
);