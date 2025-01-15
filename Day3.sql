-- Drop the table if it already exists
DROP TABLE IF EXISTS candy_nutrition;

-- Create the candy_nutrition table
CREATE TABLE IF NOT EXISTS candy_nutrition (
  candy_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  candy_name TEXT NOT NULL,
  calories INTEGER NOT NULL,
  candy_category TEXT NOT NULL
);

-- Insert row records into the candy_nutrition table
INSERT INTO candy_nutrition
  (candy_name, calories, candy_category)
VALUES
  ('Candy Cane', 200, 'Sweets'),
  ('Chocolate Bar', 250, 'Chocolate'),
  ('Gingerbread Cookie', 150, 'Baked Goods'),
  ('Lollipop', 100, 'Sweets'),
  ('Dark Chocolate Truffle', 180, 'Chocolate'),
  ('Marshmallow', 900, 'Sweets'),
  ('Sugar Cookie', 140, 'Baked Goods');

SELECT
  *
FROM candy_nutrition;
