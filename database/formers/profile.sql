CREATE TABLE
    IF NOT EXISTS f_profile (
        -- user can login with the email
        email VARCHAR(255) UNIQUE DEFAULT NULL,
        -- user can login with the phone number
        phone_number VARCHAR(15) UNIQUE DEFAULT NULL,
        -- this is the DEFAULT incremented value to identify the user
        id SERIAL PRIMARY KEY,
        -- To check the transport purpose, etc.
        village VARCHAR(50) DEFAULT NULL,
        -- To check the transport purpose, etc.
        mandal VARCHAR(50) DEFAULT NULL,
        -- To check the transport purpose, etc.
        district VARCHAR(50) DEFAULT NULL,
        -- For former comfortable purpose, etc.
        preferred_language VARCHAR(20) DEFAULT NULL,
        -- IDENTITY as a genuine user
        pan_number VARCHAR(10) DEFAULT NULL,
        -- IDENTITY as a genuine user
        adhar_number DECIMAL(12) DEFAULT NULL,
        -- Will save his profile picture
        profile_pic BYTEA,
        -- Assuming BYTEA for storing binary data (BLOB) in PostgreSQL
        first_name VARCHAR(20),
        -- Will ask the first name and last name
        last_name VARCHAR(20),
        -- Will add the date on created
        created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        -- Will update the date on update
        updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );