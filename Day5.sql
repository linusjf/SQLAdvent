DROP TABLE IF EXISTS beach_temperature_predictions;


-- Create the beach_temperature_predictions table
CREATE TABLE IF NOT EXISTS beach_temperature_predictions (
  beach_name TEXT NOT NULL,
  country TEXT NOT NULL,
  expected_temperature_c REAL NOT NULL,
  date DATE NOT NULL
);


-- Insert row records into the beach_temperature_predictions table
INSERT INTO
  beach_temperature_predictions (beach_name, country, expected_temperature_c, date)
VALUES
  ('Bondi Beach', 'Australia', 32, '2024-12-24'),
  ('Copacabana Beach', 'Brazil', 28, '2024-12-24'),
  ('Clifton Beach', 'South Africa', 31, '2024-12-25'),
  ('Brighton Beach', 'New Zealand', 25, '2024-12-25');
