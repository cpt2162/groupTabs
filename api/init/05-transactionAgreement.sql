DROP TABLE IF EXISTS TransactionAgreement CASCADE;

CREATE TABLE TransactionAgreement (
    FOREIGN KEY (transaction_id) REFERENCES Transactions (id) PRIMARY KEY,
    FOREIGN KEY (user_id) REFERENCES Users (id) PRIMARY KEY,
    amount_paid INTEGER NOT NULL DEFAULT 0,
    num_dependents INTEGER NOT NULL DEFAULT 0,
    amount_owed INTEGER NOT NULL DEFAULT 0
);