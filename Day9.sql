-- Drop the tables if they already exist
DROP TABLE IF EXISTS menu;
DROP TABLE IF EXISTS events;

-- Create the events table
CREATE TABLE events (
  event_id INTEGER PRIMARY KEY AUTOINCREMENT,
  event_name TEXT NOT NULL
);

-- Create the menu table
CREATE TABLE menu (
  dish_id INTEGER PRIMARY KEY AUTOINCREMENT,
  dish_name TEXT NOT NULL,
  event_id INTEGER NOT NULL,
  calories REAL NOT NULL,
  weight_g REAL NOT NULL,
  FOREIGN KEY (event_id) REFERENCES events (event_id)
);

-- Insert row records into the events table
INSERT INTO events (event_name)
VALUES
  ('Christmas Eve Dinner'),
  ('New Years Feast'),
  ('Winter Solstice Potluck');

-- Insert row records into the menu table
INSERT INTO menu (dish_name, event_id, calories, weight_g)
VALUES
  ('Roast Turkey', 1, 3500, 5000),
  ('Chocolate Yule Log', 1, 2200, 1000),
  ('Cheese Fondue', 2, 1500, 800),
  ('Holiday Fruitcake', 3, 4000, 1200),
  ('Honey Glazed Ham', 2, 2800, 3500);
