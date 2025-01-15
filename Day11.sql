-- Drop the table if it already exists
DROP TABLE IF EXISTS family_members;

-- Create the family_members table
CREATE TABLE family_members (
  member_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  relationship TEXT NOT NULL,
  birthday DATE NOT NULL
);

-- Insert row records into the family_members table
INSERT INTO family_members
  (name, relationship, birthday)
VALUES
  ('Dawn', 'Sister', '2024-12-24'),
  ('Bob', 'Father', '2024-05-20'),
  ('Charlie', 'Brother', '2024-12-25'),
  ('Diana', 'Mother', '2024-03-15');
