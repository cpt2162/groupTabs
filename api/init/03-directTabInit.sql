DROP TABLE IF EXISTS DirectTab CASCADE;

CREATE TABLE DirectTab (
    id SERIAL PRIMARY KEY,
    user_one_balance INTEGER NOT NULL DEFAULT 0,
    user_two_balance INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (user_one_id) REFERENCES Users (id),
    FOREIGN KEY (user_two_id) REFERENCES Users (id),
    FOREIGN KEY (group_tab_id) REFERENCES GroupTab (id)
);