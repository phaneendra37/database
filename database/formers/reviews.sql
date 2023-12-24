CREATE Table
  IF NOT EXISTS reviews(
    -- will generate the id for primary key
    id SERIAL PRIMARY KEY,
    -- will stroe the review once the user buy the product only
    review VARCHAR(300) NOT NULL,
    --will store the rating based on the user buy
    rating INT NOT NULL,
    --will store the product id to reference the product
    p_id INT,
    --will store the former id to reference the formers
    f_id int NOT NULL,
    -- will capure the updated date
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Will update the date on update
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- references on delete the product delete the products
    Foreign Key (p_id) REFERENCES store(id) ON DELETE CASCADE,
    -- references on delete the user delete the products
    Foreign Key (f_id) REFERENCES f_profile(id) ON DELETE CASCADE
  );