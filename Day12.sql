-- Drop the tables if they already exist
DROP TABLE IF EXISTS figurines;
DROP TABLE IF EXISTS snow_globes;

-- Create the snow_globes table
CREATE TABLE snow_globes (
  globe_id INTEGER PRIMARY KEY AUTOINCREMENT,
  globe_name TEXT NOT NULL,
  volume_cm3 INTEGER NOT NULL,
  material TEXT NOT NULL
);

-- Create the figurines table
CREATE TABLE figurines (
  figurine_id INTEGER PRIMARY KEY AUTOINCREMENT,
  globe_id INTEGER NOT NULL,
  figurine_type TEXT NOT NULL,
  FOREIGN KEY (globe_id) REFERENCES snow_globes (globe_id)
);

-- Insert row records into the snow_globes table
INSERT INTO snow_globes (globe_name, volume_cm3, material)
VALUES
  ('Winter Wonderland', 500, 'Glass'),
  ('Santas Workshop', 300, 'Plastic'),
  ('Frozen Forest', 400, 'Glass'),
  ('Holiday Village', 600, 'Glass');

-- Insert row records into the figurines table
INSERT INTO figurines (globe_id, figurine_type)
VALUES
  (1, 'Snowman'),
  (1, 'Tree'),
  (2, 'Santa Claus'),
  (2, 'Elf'),
  (2, 'Gift Box'),
  (3, 'Reindeer'),
  (3, 'Tree'),
  (4, 'Snowman'),
  (4, 'Santa Claus'),
  (4, 'Tree'),
  (4, 'Elf'),
  (4, 'Gift Box');
