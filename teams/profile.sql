CREATE TABLE
  IF NOT EXISTS profile (
    -- Will generate the profile id 
    profile_id SERIAL PRIMARY KEY,
    -- Will post the user email
    email VARCHAR(50) UNIQUE NOT NULL,
    -- Will capture the first name 
    first_name VARCHAR(30) DEFAULT NULL,
    -- Will capture the last name if provided
    last_name VARCHAR(30) DEFAULT NULL,
    -- Will capture the phone number if provided
    phone_number DECIMAL(16) DEFAULT NULL,
    -- Will capture the profile picture if provided
    profile_pic BYTEA,
    -- Will store the date of birth 
    date_of_birth DATE,
    -- Will capture the source of the user
    source VARCHAR(20) DEFAULT 'Direct',
    -- Account status
    account_status VARCHAR(20) DEFAULT 'Activated',
    -- Capture the date when the user was added
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );