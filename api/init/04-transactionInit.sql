DROP TABLE IF EXISTS Transaction CASCADE;

CREATE TABLE Transaction (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    cost MONEY NOT NULL,
    num_beneficiaries INTEGER NOT NULL,
    num_contributors INTEGER NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES Users (id),
    FOREIGN KEY (group_tab_id) REFERENCES GroupTab (id),
    FOREIGN KEY (direct_tab_id) REFERENCES DirectTab (id)
);