-- Drop the table if it already exists
DROP TABLE IF EXISTS presents;

-- Create the presents table
CREATE TABLE presents (
  gift_id INTEGER PRIMARY KEY AUTOINCREMENT,
  gift_name TEXT NOT NULL,
  recipient TEXT NOT NULL,
  weight_kg REAL NOT NULL
);

-- Insert row records into the presents table
INSERT INTO presents (gift_name, recipient, weight_kg)
VALUES
  ('Toy Train', 'John', 2.5),
  ('Chocolate Box', 'Alice', 0.8),
  ('Teddy Bear', 'Sophia', 1.2),
  ('Board Game', 'John', 0.9);
