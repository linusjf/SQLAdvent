-- Drop table if exists
DROP TABLE IF EXISTS deliveries;

-- Create table
CREATE TABLE deliveries (
  delivery_date DATE NOT NULL,
  gifts_delivered INTEGER NOT NULL
);

-- Insert data
INSERT INTO
  deliveries (delivery_date, gifts_delivered)
VALUES
  ('2024-12-20', 120),
  ('2024-12-21', 150),
  ('2024-12-22', 200),
  ('2024-12-23', 300),
  ('2024-12-24', 500);
