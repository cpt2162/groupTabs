CREATE OR REPLACE FUNCTION signIn(
    p_username TEXT,
    p_password TEXT,
    p_session_key TEXT
) RETURNS TEXT AS $$
DECLARE
    v_user_id INTEGER;
BEGIN
    SELECT id INTO v_user_id
    FROM Users
    WHERE username = p_username
    AND password = p_password;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Invalid username or password';
    ELSE
        INSERT INTO UserSession (user_id, session_key)
        VALUES (v_user_id, p_session_key);
        RAISE NOTICE 'User % signed in successfully', p_username;
        RETURN p_session_key;
    END IF;
END $$ LANGUAGE plpgsql;

SELECT signIn($1, $2, $3);