-- Drop the tables if they already exist
DROP TABLE IF EXISTS resolutions;

-- Create the resolutions table
CREATE TABLE resolutions (
  resolution_id INTEGER PRIMARY KEY AUTOINCREMENT,
  friend_name TEXT NOT NULL,
  resolution TEXT NOT NULL,
  is_completed INTEGER NOT NULL CHECK (is_completed IN (0, 1))
);

-- Insert row records into the resolutions table
INSERT INTO
  resolutions (friend_name, resolution, is_completed)
VALUES
  ('Alice', 'Exercise daily', 1),
  ('Alice', 'Read 20 books', 0),
  ('Bob', 'Save money', 0),
  ('Bob', 'Eat healthier', 1),
  ('Charlie', 'Travel more', 1),
  ('Charlie', 'Learn a new skill', 1),
  ('Diana', 'Volunteer monthly', 1),
  ('Diana', 'Drink more water', 0),
  ('Diana', 'Sleep 8 hours', 1);
