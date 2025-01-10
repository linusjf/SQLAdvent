SELECT
  candy_name,
  candy_category AS category,
  calories,
  DENSE_RANK() OVER (
    PARTITION BY
      candy_category
    ORDER BY
      calories DESC
  ) AS rank_in_category
FROM
  candy_nutrition
ORDER BY
  candy_category,
  rank_in_category;

SELECT
  candy_name,
  candy_category AS category,
  calories,
  (
    SELECT COUNT(*)
    FROM
      candy_nutrition AS c2
    WHERE
      c2.candy_category = c1.candy_category
      AND c2.calories > c1.calories
  ) + 1 AS rank_in_category
FROM
  candy_nutrition AS c1
ORDER BY
  candy_category,
  rank_in_category;

SELECT
  candy_name,
  candy_category AS category,
  calories,
  ROW_NUMBER() OVER (
    PARTITION BY
      candy_category
    ORDER BY
      calories DESC
  ) AS rank_in_category
FROM
  candy_nutrition
ORDER BY
  candy_category,
  rank_in_category;
