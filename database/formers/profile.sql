CREATE TABLE
  IF NOT EXISTS f_profile(
    -- user can login with the email 
    email UNIQUE DEFAULT NULL,
    -- user can login with the phone number
    phone_number UNIQUE DEFAULT NULL,
    -- this is the DEFAULT incremented value to identify the user
    id serial PRIMARY KEY,
    -- To check the transport purpose etc
    village VARCHAR(50) DEFAULT NULL,
    -- To check the transport purpose etc
    mandal VARCHAR(50) DEFAULT NULL,
    -- To check the transport purpose etc
    district VARCHAR(50) DEFAULT NULL,
    -- For formaer confortable purpose etc
    preffered_language VARCHAR(20) DEFAULT NULL,
    -- IDENTITY as a genune user
    pab_number VARCHAR(10) DEFAULT NULL,
    -- IDENTITY as a genune user
    adhar_number DECIMAL(12) DEFAULT NULL,
    --Will save his profile picture
    profile_pic BLOB,
    -- Will ask the first name and last name
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    -- will add the date on created
    created_date TIMESTAMP DEFAULT TIMESTAMP,
    -- will update the date on update
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  );