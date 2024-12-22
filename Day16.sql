-- Drop the table if it already exists
DROP TABLE IF EXISTS candy_sales;


-- Create the candy_sales table
CREATE TABLE candy_sales (
  sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
  candy_name TEXT NOT NULL,
  quantity_sold INTEGER NOT NULL,
  price_per_unit REAL NOT NULL,
  category TEXT NOT NULL
);


-- Insert row records into the candy_sales table
INSERT INTO
  candy_sales (
    candy_name,
    quantity_sold,
    price_per_unit,
    category
  )
VALUES
  ('Candy Cane', 20, 1.5, 'Sweets'),
  ('Chocolate Bar', 10, 2, 'Chocolate'),
  ('Lollipop', 5, 0.75, 'Sweets'),
  ('Dark Chocolate Truffle', 8, 2.5, 'Chocolate'),
  ('Gummy Bears', 15, 1.2, 'Sweets'),
  ('Chocolate Fudge', 12, 3, 'Chocolate');
