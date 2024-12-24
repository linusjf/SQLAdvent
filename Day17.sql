-- Drop the table if it already exists
DROP TABLE IF EXISTS grinch_pranks;

-- Create the grinch_pranks table
CREATE TABLE grinch_pranks (
  prank_id INTEGER PRIMARY KEY AUTOINCREMENT,
  prank_name TEXT NOT NULL,
  location TEXT NOT NULL,
  difficulty TEXT NOT NULL
);

-- Insert row records into the grinch_pranks table
INSERT INTO
  grinch_pranks (prank_name, location, difficulty)
VALUES
  ('Stealing Stockings', 'Whoville', 'Beginner'),
  (
    'Christmas Tree Topple',
    'Whoville Town Square',
    'Advanced'
  ),
  ('Present Swap', 'Cindy Lous House', 'Beginner'),
  ('Sleigh Sabotage', 'Mount Crumpit', 'Expert'),
  ('Chimney Block', 'Mayors Mansion', 'Expert');
