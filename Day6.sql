-- Drop the tables if they already exist
DROP TABLE IF EXISTS tracking;


DROP TABLE IF EXISTS polar_bears;


-- Create the polar_bears table
CREATE TABLE polar_bears (
  bear_id INTEGER PRIMARY KEY AUTOINCREMENT,
  bear_name TEXT NOT NULL,
  age INTEGER NOT NULL
);


-- Create the tracking table
CREATE TABLE tracking (
  tracking_id INTEGER PRIMARY KEY AUTOINCREMENT,
  bear_id INTEGER NOT NULL,
  distance_km REAL NOT NULL,
  date DATE NOT NULL,
  FOREIGN KEY (bear_id) REFERENCES polar_bears (bear_id)
);


-- Insert row records into the polar_bears table
INSERT INTO
  polar_bears (bear_name, age)
VALUES
  ('Snowball', 10),
  ('Frosty', 7),
  ('Iceberg', 15),
  ('Chilly', 5);


-- Insert row records into the tracking table
INSERT INTO
  tracking (bear_id, distance_km, date)
VALUES
  (1, 25, '2024-12-01'),
  (2, 40, '2024-12-02'),
  (1, 30, '2024-12-03'),
  (3, 50, '2024-12-04'),
  (2, 35, '2024-12-05'),
  (4, 20, '2024-12-06'),
  (3, 55, '2024-12-07'),
  (1, 45, '2024-12-08');
