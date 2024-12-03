-- Create the rentals table
CREATE TABLE rentals (
  rental_id INTEGER PRIMARY KEY,
  customer_name TEXT NOT NULL,
  activity TEXT NOT NULL,
  rental_date DATE NOT NULL
);

CREATE INDEX idx_customer_name ON rentals (customer_name);

-- Insert row records into the rentals table
INSERT INTO rentals (rental_id, customer_name, activity, rental_date)
VALUES
  (1, 'Emily', 'Skiing', '2024-01-01'),
  (2, 'Michael', 'Snowboarding', '2024-01-02'),
  (3, 'Emily', 'Snowboarding', '2024-01-03'),
  (4, 'Sarah', 'Skiing', '2024-01-01'),
  (5, 'Michael', 'Skiing', '2024-01-02'),
  (6, 'Michael', 'Snowtubing', '2024-01-02');
