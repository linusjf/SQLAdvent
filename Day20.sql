-- Drop table if exists
DROP TABLE IF EXISTS sellers;


-- Create table
CREATE TABLE sellers (
  vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  vendor_name TEXT NOT NULL,
  market_location TEXT NOT NULL
);


-- Drop table if exists
DROP TABLE IF EXISTS item_prices;


-- Create table
CREATE TABLE item_prices (
  item_id INTEGER PRIMARY KEY AUTOINCREMENT,
  vendor_id INTEGER NOT NULL,
  item_name TEXT NOT NULL,
  price_usd REAL NOT NULL,
  FOREIGN KEY (vendor_id) REFERENCES sellers (vendor_id)
);


-- Insert data
INSERT INTO
  sellers (vendor_name, market_location)
VALUES
  ('Cozy Crafts', 'Downtown Square'),
  ('Sweet Treats', 'Central Park'),
  ('Winter Warmers', 'Downtown Square');


-- Insert data
INSERT INTO
  item_prices (vendor_id, item_name, price_usd)
VALUES
  (1, 'Knitted Scarf', 25.0),
  (2, 'Hot Chocolate', 5.0),
  (2, 'Gingerbread Cookie', 3.5),
  (3, 'Wool Hat', 18.0),
  (3, 'Santa Pin', 2.0);
