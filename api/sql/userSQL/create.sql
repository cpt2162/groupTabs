WITH new_user AS (
    INSERT INTO User (username, password) VALUES (
        $1,
        $2
    ) RETURNING id
) INSERT INTO UserData (first_name, last_name, email, phone, user_id) VALUES (
    $3,
    $4,
    $5,
    $6,
    (SELECT id FROM new_user)
);


