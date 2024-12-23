-- Drop table if exists
DROP TABLE IF EXISTS grinch_weight_log;


-- Create table
CREATE TABLE grinch_weight_log (
  log_id INTEGER PRIMARY KEY AUTOINCREMENT,
  day_of_month INTEGER NOT NULL,
  weight REAL NOT NULL
);


-- Insert data
INSERT INTO
  grinch_weight_log (day_of_month, weight)
VALUES
  (1, 250.0),
  (2, 248.0),
  (3, 249.0),
  (4, 247.0),
  (5, 246.0),
  (6, 248.0);
