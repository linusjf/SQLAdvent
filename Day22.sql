-- Drop table if exists
DROP TABLE IF EXISTS guests;

-- Create table
CREATE TABLE guests (
  guest_id INTEGER PRIMARY KEY AUTOINCREMENT,
  guest_name TEXT NOT NULL
);

-- Drop table if exists
DROP TABLE IF EXISTS guest_gifts;

-- Create table
CREATE TABLE guest_gifts (
  gift_id INTEGER PRIMARY KEY AUTOINCREMENT,
  guest_id INTEGER NOT NULL,
  gift_name TEXT NOT NULL,
  FOREIGN KEY (guest_id) REFERENCES guests (guest_id)
);

-- Insert data
INSERT INTO
  guests (guest_name)
VALUES
  ('Cindy Lou'),
  ('The Grinch'),
  ('Max the Dog'),
  ('Mayor May Who');

-- Insert data
INSERT INTO
  guest_gifts (guest_id, gift_name)
VALUES
  (1, 'Toy Train'),
  (1, 'Plush Bear'),
  (2, 'Bag of Coal'),
  (2, 'Sleigh Bell'),
  (3, 'Dog Treats');
