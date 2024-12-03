-- Drop the table if it already exists
DROP TABLE IF EXISTS candy_nutrition;

-- Create the candy_nutrition table
CREATE TABLE IF NOT EXISTS candy_nutrition (
  candy_id INTEGER PRIMARY KEY,
  candy_name TEXT NOT NULL,
  calories INTEGER NOT NULL,
  candy_category TEXT NOT NULL
);

-- Insert row records into the candy_nutrition table
INSERT INTO candy_nutrition (candy_id, candy_name, calories, candy_category)
VALUES
  (1, 'Candy Cane', 200, 'Sweets'),
  (2, 'Chocolate Bar', 250, 'Chocolate'),
  (3, 'Gingerbread Cookie', 150, 'Baked Goods'),
  (4, 'Lollipop', 100, 'Sweets'),
  (5, 'Dark Chocolate Truffle', 180, 'Chocolate'),
  (6, 'Marshmallow', 900, 'Sweets'),
  (7, 'Sugar Cookie', 140, 'Baked Goods');
