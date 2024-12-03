drop table if exists gifts;

-- Create the gifts table
CREATE TABLE if not exists gifts (
  gift_name TEXT NOT NULL,
  recipient TEXT NOT NULL,
  weight_kg REAL NOT NULL
);

-- Insert row records into the gifts table
INSERT INTO gifts (gift_name, recipient, weight_kg)
VALUES
  ('Toy Train', 'John', 2.5),
  ('Chocolate Box', 'Alice', 0.8),
  ('Teddy Bear', 'Sophia', 1.2),
  ('Board Game', 'Liam', 0.9);
