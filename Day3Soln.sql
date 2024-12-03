select candy_name, candy_category as category, calories, rank() over (partition by candy_category order by calories desc) rank_in_category from candy_nutrition;
