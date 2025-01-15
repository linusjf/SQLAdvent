-- Drop tables if they already exist
DROP TABLE IF EXISTS activity_ratings;

DROP TABLE IF EXISTS activities;

-- Create activities table
CREATE TABLE activities (
  activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
  activity_name TEXT NOT NULL
);

-- Create activity_ratings table
CREATE TABLE activity_ratings (
  rating_id INTEGER PRIMARY KEY AUTOINCREMENT,
  activity_id INTEGER NOT NULL,
  rating REAL NOT NULL,
  FOREIGN KEY (activity_id) REFERENCES activities (activity_id)
);

-- Insert data into activities table
INSERT INTO activities
  (activity_name)
VALUES
  ('Surfing Lessons'),
  ('Jet Skiing'),
  ('Sunset Yoga');

-- Insert data into activity_ratings table
INSERT INTO activity_ratings
  (activity_id, rating)
VALUES
  (1, 4.7),
  (1, 4.8),
  (1, 4.9),
  (2, 4.6),
  (2, 4.7),
  (2, 4.8),
  (2, 4.9),
  (3, 4.8),
  (3, 4.7),
  (3, 4.9),
  (3, 4.8),
  (3, 4.9);
