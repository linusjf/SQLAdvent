-- Drop table if exists
DROP TABLE IF EXISTS gifts;

-- Create table
CREATE TABLE gifts (
  gift_id INTEGER PRIMARY KEY AUTOINCREMENT,
  gift_name TEXT NOT NULL,
  recipient_type TEXT NOT NULL,
  weight_kg REAL NOT NULL
);

-- Insert data
INSERT INTO gifts (gift_name, recipient_type, weight_kg)
VALUES
  ('Toy Train', 'good', 2.5),
  ('Lumps of Coal', 'naughty', 1.5),
  ('Teddy Bear', 'good', 1.2),
  ('Chocolate Bar', 'good', 0.3),
  ('Board Game', 'naughty', 1.8);
