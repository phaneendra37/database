CREATE TABLE
  IF NOT EXISTS channel_members(
    --Will adding the primary key to reference this so somewhere 
    id INT SERIAL PRIMARY KEY,
    -- Will capture ID from channels table
    channel_id INT NOT NULL,
    -- Storing the member id in profiles table
    member_id Int NOT NULL,
    -- Will store the role as a member present
    role varchar(20) DEFAULT 'Member',
    --Will captrue the created date
    created_date TIMESTAMP DEFAULT TIMESTAMP,
    -- Adding the relation with profile table
    Foreign Key (member_id) REFERENCES profile(domain_id),
    --Adding relation with the channel tables
    Foreign Key (channel_id) REFERENCES channels(channel_id),
    --Adding the CONSTRAINT to not duplicating the accounts
    CONSTRAINT unique_channel_member_combination UNIQUE (channel_id, member_id)
  );