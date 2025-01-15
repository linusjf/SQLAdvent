SELECT
  menu.dish_name,
  events.event_name,
  ROUND(1.0 * menu.calories / menu.weight_g, 2) AS calorie_density
FROM
  menu
  INNER JOIN events ON menu.event_id = events.event_id
ORDER BY menu.event_id ASC, calorie_density DESC;

SELECT
  dish_name,
  event_name,
  calorie_density
FROM
  (
    SELECT
      menu.dish_name,
      events.event_name,
      ROUND(1.0 * menu.calories / menu.weight_g, 2) AS calorie_density,
      ROW_NUMBER() OVER (
        PARTITION BY menu.event_id
        ORDER BY ROUND(1.0 * menu.calories / menu.weight_g, 2) DESC
      ) AS row_num
    FROM
      menu
      INNER JOIN events ON menu.event_id = events.event_id
  )
WHERE row_num <= 3;

WITH
  dishes AS (
    SELECT
      menu.dish_name,
      events.event_name,
      ROUND(CAST(menu.calories AS FLOAT) / menu.weight_g, 2) AS calorie_density,
      ROW_NUMBER() OVER (
        PARTITION BY events.event_id
        ORDER BY ROUND(CAST(menu.calories AS FLOAT) / menu.weight_g, 2) DESC
      ) AS row_num
    FROM
      menu
      INNER JOIN events ON menu.event_id = events.event_id
  )
SELECT
  dish_name,
  event_name,
  calorie_density
FROM dishes
WHERE row_num <= 3;

WITH
  dishes AS (
    SELECT
      menu.dish_name,
      events.event_name,
      ROUND(CAST(menu.calories AS FLOAT) / menu.weight_g, 2) AS calorie_density,
      ROW_NUMBER() OVER (
        PARTITION BY menu.event_id
        ORDER BY ROUND(CAST(menu.calories AS FLOAT) / menu.weight_g, 2) DESC
      ) AS row_num
    FROM
      menu
      INNER JOIN events USING (event_id)
  )
SELECT
  dish_name,
  event_name,
  calorie_density
FROM dishes
WHERE row_num <= 3;
