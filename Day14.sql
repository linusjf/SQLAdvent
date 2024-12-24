-- Drop the table if it already exists
DROP TABLE IF EXISTS snow;

-- Create the snow table
CREATE TABLE snow (
  resort_id INTEGER PRIMARY KEY AUTOINCREMENT,
  resort_name TEXT NOT NULL,
  location TEXT NOT NULL,
  snowfall_inches INTEGER NOT NULL
);

-- Insert row records into the snow table
INSERT INTO
  snow (resort_name, location, snowfall_inches)
VALUES
  ('Snowy Peaks', 'Colorado', 60),
  ('Winter Wonderland', 'Utah', 45),
  ('Frozen Slopes', 'Alaska', 75);
