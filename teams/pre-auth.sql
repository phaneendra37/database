CREATE TABLE
  IF NOT EXISTS pre_auth (
    -- Will auto generate the column to check how many records we had
    id SERIAL PRIMARY KEY,
    -- Email must be UNIQUE for all the rows
    email VARCHAR(50) UNIQUE NOT NULL,
    -- Will generate the OTP from the DATABASE side
    otp DECIMAL(6),
    -- Will capture the wrong inputs; after 4-5 attempts will kill the session
    attempts INT DEFAULT 0,
    -- Will capture the OS to get the analytics
    os VARCHAR(20) NOT NULL,
    -- Will capture the device to get the analytics
    device VARCHAR(20) NOT NULL,
    -- Will capture the source to get the traffic
    source VARCHAR(20) DEFAULT 'App',
    -- Use single quotes for string literals
    -- Will capture the created date
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Use CURRENT_TIMESTAMP to set the default value
  );