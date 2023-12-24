CREATE TABLE
  IF NOT EXISTS channels (
    -- Will generate the channel id to refer in somewhere
    channel_id SERIAL PRIMARY KEY,
    -- Name of the channel will be stored here
    name VARCHAR(50) NOT NULL,
    -- Description for the channel will be stored here
    description VARCHAR(200),
    -- Will store whether the channel is private or public
    is_private BOOLEAN DEFAULT FALSE,
    -- Will store the user id
    created_by INT,
    -- Will capture the creation date
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Adding the relation to the profile so the records will be appropriate
    FOREIGN KEY (created_by) REFERENCES profile(profile_id)
  );