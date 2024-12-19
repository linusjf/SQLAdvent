-- Drop table if exists
DROP TABLE IF EXISTS bears;

-- Create table
CREATE TABLE bears (
  bear_id INTEGER PRIMARY KEY AUTOINCREMENT,
  bear_name TEXT NOT NULL,
  age INTEGER NOT NULL
);
-- Drop table if exists
DROP TABLE IF EXISTS meal_log;

-- Create table
CREATE TABLE meal_log (
  log_id INTEGER PRIMARY KEY AUTOINCREMENT,
  bear_id INTEGER NOT NULL,
  food_type TEXT NOT NULL,
  food_weight_kg REAL NOT NULL,
  date DATE NOT NULL,
  FOREIGN KEY (bear_id) REFERENCES bears (bear_id)
);
-- Insert data
INSERT INTO bears (bear_name, age)
VALUES
  ('Snowball', 10),
  ('Frosty', 7),
  ('Iceberg', 15);

-- Insert data
INSERT INTO meal_log (bear_id, food_type, food_weight_kg, date)
VALUES
  (1, 'Seal', 30.0, '2024-12-01'),
  (2, 'Fish', 15.0, '2024-12-02'),
  (1, 'Fish', 10.0, '2024-12-03'),
  (3, 'Seal', 25.0, '2024-12-04'),
  (2, 'Seal', 20.0, '2024-12-05'),
  (3, 'Fish', 18.0, '2024-12-06');
