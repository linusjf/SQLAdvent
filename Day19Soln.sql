SELECT
  bears.bear_name,
  MAX(meal_log.food_weight_kg) AS biggest_meal_kg
FROM
  bears
  INNER JOIN meal_log ON bears.bear_id = meal_log.bear_id
WHERE meal_log.meal_date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY bears.bear_name
ORDER BY biggest_meal_kg DESC;
