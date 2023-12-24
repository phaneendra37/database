CREATE TABLE
  IF NOT EXISTS pre_auth(
    -- Will auto generate the column to check how many records we had
    id INT SERIAL,
    -- Email must be UNIQUE for all the rows
    Email VARCHAR(50) UNIQUE NOT NULL,
    -- Will generate the OTP from the DATAbase side
    Otp INT DEFAULT FLOOR(RANDOM() * (999999 - 100000 + 1) + 100000),
    -- Will capture the wrong inputs after 4-5 will kill the session
    attempts INT DEFAULT 0,
    -- Will capture the OS to get the analyics
    os VARCHAR(20) NOT NULL,
    -- will capture the device to get the analytics
    device VARCHAR(20) NOT NULL,
    -- Will capture the source to get the traffic
    source VARCHAR(20) DEFAULT "App",
    -- As it is will capture the created date
    created_date TIMESTAMP DEFAULT TIMESTAMP,
  );