CREATE TABLE
  IF NOT EXISTS messages (
    -- will capotrue the messages INCREMENT iD
    message_id SERIAL PRIMARY KEY,
    --Will capture the sender id
    sender_id INT NOT NULL,
    --Will capture the receiver id
    receiver_id INT,
    -- For one-to-one messages, store the receiver's user_id
    channel_id INT,
    -- For group messages, store the channel_id
    message_content TEXT NOT NULL,
    -- will capture the message date
    sent_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    --Adding relations for messages
    FOREIGN KEY (sender_id) REFERENCES profile(profile_id),
    FOREIGN KEY (receiver_id) REFERENCES profile(profile_id),
    FOREIGN KEY (channel_id) REFERENCES channels(channel_id)
  );