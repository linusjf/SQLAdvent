SELECT
  candy_name,
  candy_category AS category,
  calories,
  DENSE_RANK() OVER (
    PARTITION BY candy_category
    ORDER BY calories DESC
  ) AS rank_in_category
FROM candy_nutrition
ORDER BY candy_category, rank_in_category;

SELECT
  candy_one.candy_name,
  candy_one.candy_category AS category,
  candy_one.calories,
  (
    SELECT COUNT(*)
    FROM candy_nutrition AS candy_two
    WHERE
      candy_two.candy_category = candy_one.candy_category
      AND candy_two.calories > candy_one.calories
  ) + 1 AS rank_in_category
FROM candy_nutrition AS candy_one
ORDER BY candy_one.candy_category, candy_one.rank_in_category;

SELECT
  candy_name,
  candy_category AS category,
  calories,
  ROW_NUMBER() OVER (
    PARTITION BY candy_category
    ORDER BY calories DESC
  ) AS rank_in_category
FROM candy_nutrition
ORDER BY candy_category, rank_in_category;
