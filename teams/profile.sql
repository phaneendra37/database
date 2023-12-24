CREATE TABLE
  IF NOT EXISTS profile(
    -- Will generate the profile id 
    domain_id SERIAL PRIMARY KEY,
    -- will post the user email
    email VARCHAR(50) NOT NULL,
    -- will captrue the first name 
    first_name VARCHAR(30) DEFAULT SUBSTRING(
      email
      FROM
        1 FOR POSITION('@', IN email) -1
    ),
    -- will capture the last name if provided
    last_name VARCHAR(30) DEFAULT NULL,
    -- will captrue the phone number if provided
    phone_number DECIMAL(16) DEFAULT NULL,
    -- will capture the profile picture if provided
    profile_pic BYTEA,
    -- will store the date of birth 
    date_of_birth DATE,
    -- Will capture the source o    f user
    source VARCHAR(20) DEFAULT 'Direct',
    -- account status
    account_status VARCHAR(20) DEFAULT 'Activated',
    --Captrue the date of the user added
    created_date TIMESTAMP DEFAULT TIMESTAMP,
  );