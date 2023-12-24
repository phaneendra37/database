CREATE TABLE
  IF NOT EXISTS channels(
    -- will generate the channel id to refering in somewhere
    channel_id INT SERIAL PRIMARY KEY,
    -- Name of the channel will store here
    name VARCHAR(50) NOT NULL,
    -- Description for the channel will store here
    description VARCHAR(200) DEFAULT NULL,
    -- Will store the channel is private or public
    is_private BOOLEAN DEFAULT FALSE,
    -- Will store the user id
    created_by Int,
    -- Will capture the
    created_date TIMESTAMP DEFAULT TIMESTAMP,
    -- Adding the relation to the profile so the records will be appropriate
    Foreign Key (created_by) REFERENCES profile(domain_id),
  );