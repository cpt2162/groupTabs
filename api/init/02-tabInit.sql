DROP TABLE IF EXISTS GroupTab CASCADE;

CREATE TABLE GroupTab (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (leader_id) REFERENCES Users (id),
    open BOOLEAN NOT NULL DEFAULT TRUE
);