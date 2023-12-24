CREATE TABLE
  IF NOT EXISTS invited_users(
    --will capture the is how many invited 
    uid SERIAL PRIMARY KEY,
    --Will captrue the sender id 
    sender_id INT NOT NULL,
    --capturing the email 
    receiver_email VARCHAR(200) UNIQUE NOT NULL,
    --making the account status as a pending by default
    invite_status VARCHAR(20) DEFAULT 'Pending',
    --will captring the user invited date
    invited_date TIMESTAMP DEFAULT TIMESTAMP
  );