drop table if exists snowfall;
drop table if exists ski_resorts;

-- Create the ski_resorts table
CREATE TABLE ski_resorts (
  resort_id INTEGER PRIMARY KEY,
  resort_name TEXT NOT NULL,
  region TEXT NOT NULL
);

-- Create the snowfall table
CREATE TABLE snowfall (
  resort_id INTEGER PRIMARY KEY,
  snowfall_inches REAL NOT NULL,
  FOREIGN KEY (resort_id) REFERENCES ski_resorts (resort_id)
);

-- Insert row records into the ski_resorts table
INSERT INTO ski_resorts (resort_id, resort_name, region)
VALUES
  (1, 'Snowy Peaks', 'Rocky Mountains'),
  (2, 'Winter Wonderland', 'Wasatch Range'),
  (3, 'Frozen Slopes', 'Alaska Range'),
  (4, 'Powder Paradise', 'Rocky Mountains');

-- Insert row records into the snowfall table
INSERT INTO snowfall (resort_id, snowfall_inches)
VALUES
  (1, 60),
  (2, 45),
  (3, 75),
  (4, 55);
