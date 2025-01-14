DROP TABLE IF EXISTS TransactionAgreement CASCADE;

CREATE TABLE TransactionAgreement (
    transaction_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    amount_paid INTEGER NOT NULL DEFAULT 0,
    num_dependents INTEGER NOT NULL DEFAULT 0,
    amount_owed INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (transaction_id, user_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction (id),
    FOREIGN KEY (user_id) REFERENCES Users (id)
);