SELECT
  dish_name,
  event_name,
  round(calories / weight_g, 2) AS calorie_density
FROM
  menu
JOIN
  events ON menu.event_id = events.event_id
ORDER BY
  menu.event_id, calorie_density DESC;
SELECT
  dish_name,
  event_name,
  calorie_density
FROM (
  SELECT
    dish_name,
    event_name,
    round(calories / weight_g,2) AS calorie_density,
    ROW_NUMBER() OVER (PARTITION BY menu.event_id ORDER BY round(calories / weight_g,2) DESC) AS row_num
  FROM
    menu
  JOIN
    events ON menu.event_id = events.event_id
)
WHERE
  row_num <= 2;
with dishes as (SELECT
    dish_name,
    event_name,
    round(calories / weight_g,2) AS calorie_density,
    ROW_NUMBER() OVER (PARTITION BY menu.event_id ORDER BY round(calories / weight_g,2) DESC) AS row_num
  FROM
    menu
  JOIN
    events ON menu.event_id = events.event_id
)
select dish_name, event_name, calorie_density from
(select * from dishes where row_num <= 2);
