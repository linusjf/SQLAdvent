-- Drop the tables if they already exist
DROP TABLE IF EXISTS family;

DROP TABLE IF EXISTS parent_child_relationships;

-- Create the family table
CREATE TABLE family (
  member_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  age INTEGER NOT NULL
);

-- Create the parent_child_relationships table
CREATE TABLE parent_child_relationships (
  parent_id INTEGER NOT NULL,
  child_id INTEGER NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES family (member_id),
  FOREIGN KEY (child_id) REFERENCES family (member_id)
);

-- Insert row records into the family table
INSERT INTO
  family (name, age)
VALUES
  ('Alice', 30),
  ('Bob', 58),
  ('Charlie', 33),
  ('Diana', 55),
  ('Eve', 5),
  ('Frank', 60),
  ('Grace', 32),
  ('Hannah', 8),
  ('Ian', 12),
  ('Jack', 3);

-- Insert row records into the parent_child_relationships table
INSERT INTO
  parent_child_relationships (parent_id, child_id)
VALUES
  (2, 1),
  (3, 5),
  (4, 1),
  (6, 7),
  (6, 8),
  (7, 9),
  (7, 10),
  (4, 8);
