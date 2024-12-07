-- Drop the tables if they already exist
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS vendors;

-- Create the vendors table
CREATE TABLE vendors (
vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
vendor_name TEXT NOT NULL,
market_location TEXT NOT NULL
);

-- Create the sales table
CREATE TABLE sales (
sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
vendor_id INTEGER NOT NULL,
item_name TEXT NOT NULL,
quantity_sold INTEGER NOT NULL,
price_per_unit REAL NOT NULL,
FOREIGN KEY (vendor_id) REFERENCES vendors (vendor_id)
);

-- Insert row records into the vendors table
INSERT INTO vendors (vendor_name, market_location)
VALUES
('Cozy Crafts', 'Downtown Square'),
('Sweet Treats', 'Central Park'),
('Winter Warmers', 'Downtown Square');

-- Insert row records into the sales table
INSERT INTO sales (vendor_id, item_name, quantity_sold, price_per_unit)
VALUES
(1, 'Knitted Scarf', 15, 25.0),
(2, 'Hot Chocolate', 50, 3.5),
(3, 'Wool Hat', 20, 18.0),
(1, 'Handmade Ornament', 10, 15.0),
(2, 'Gingerbread Cookie', 30, 5.0);
