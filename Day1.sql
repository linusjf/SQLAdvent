DROP TABLE IF EXISTS rentals;

-- Create the rentals table
CREATE TABLE IF NOT EXISTS rentals (
  rental_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  customer_name TEXT NOT NULL,
  activity TEXT NOT NULL,
  rental_date DATE NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_customer_name ON rentals (customer_name);

-- Insert row records into the rentals table
INSERT INTO
  rentals (customer_name, activity, rental_date)
VALUES
  ('Emily', 'Skiing', '2024-01-01'),
  ('Michael', 'Snowboarding', '2024-01-02'),
  ('Emily', 'Snowboarding', '2024-01-03'),
  ('Sarah', 'Skiing', '2024-01-01'),
  ('Michael', 'Skiing', '2024-01-02'),
  ('Michael', 'Snowtubing', '2024-01-02');

SELECT
  *
FROM
  rentals;
