CREATE Table
  IF NOT EXISTS store(
    -- will generate the id for primary key
    id SERIAL PRIMARY KEY,
    -- Item name to sell
    name VARCHAR(300) NOT NULL,
    -- Item images to show customers
    image BYTEA,
    -- Quantity of the item present in
    quantity DECIMAL(4) NOT NULL,
    -- Price of the each quantity
    price DECIMAL(12) NOT NULL,
    --will store the customer id for REFERENCES
    f_id int NOT NULL,
    -- will capure the updated date
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Will update the date on update
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    --Foreign key constraint
    Foreign Key (f_id) REFERENCES f_profile(id) ON DELETE CASCADE
  );