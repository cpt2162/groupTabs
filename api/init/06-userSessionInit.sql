DROP TABLE IF EXITS UserSession CASCADE;

CREATE TABLE UserSession (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    session_key TEXT NOT NULL,
    exp_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP + interval '4 hours', 
    FOREIGN KEY (user_id) REFERENCES User (id)
);