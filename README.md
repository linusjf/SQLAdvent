# SQLAdvent

**Source:** *<https://www.sqlcalendar.com>*

## Start

1. Install sqlite

2. Create sqlite database with command:

 `sqlite3 advent.db`

3. Execute sql files with command:

  `sqlite3 advent.db < <sqlfilename>`

## Day 1 of SQL Advent Calendar

**Today's Question:**

*A ski resort company wants to know which customers rented ski equipment for more than one type of activity (e.g., skiing and snowboarding). List the customer names and the number of distinct activities they rented equipment for.*

**Table name:** *rentals*

| rental_id |	customer_name |	activity |	rental_date|
| -- | -- | -- | -- |
| 1 |	Emily	| Skiing |	2024-01-01 |
| 2 |	Michael	| Snowboarding |	2024-01-02 |
| 3 |	Emily |	Snowboarding |	2024-01-03 |
| 4	| Sarah	| Skiing |	2024-01-01 |
| 5 |	Michael |	Skiing  |	2024-01-02 |
| 6 |	Michael |	Snowtubing |	2024-01-02 |

**Level of difficulty:** *Medium*

## Day 2 of SQL Advent Calendar

**Today's Question:**

*Santa wants to know which gifts weigh more than 1 kg. Can you list them?*


**Table name:** *gifts*

| gift_name |	recipient |	weight_kg |
| -- | -- | -- |
| Toy Train |	John |	2.5 |
| Chocolate Box |	Alice | 	0.8 |
| Teddy Bear |	Sophia |	1.2 |
| Board Game |	Liam |	0.9 |

**Level of difficulty:** *Easy*

## Day 3 of SQL Advent Calendar

**Today's Question:**

*You’re trying to identify the most calorie-packed candies to avoid during your holiday binge. Write a query to rank candies based on their calorie count within each category. Include the candy name, category, calories, and rank (rank_in_category) within the category.*

**Table name:** *candy_nutrition*

| candy_id	| candy_name |	calories	| candy_category |
| -- | -- | -- | --- |
| 1	| Candy Cane | 	200 |	Sweets |
| 2	| Chocolate Bar |	250	| Chocolate |
| 3	| Gingerbread Cookie |	150 |	Baked Goods |
| 4 |	Lollipop |	100 |	Sweets |
| 5	| Dark Chocolate Truffle |	180	| Chocolate |
| 6 |	Marshmallow	| 900	| Sweets |
| 7 |	Sugar Cookie |	140 |	Baked Goods |

**Level of difficulty:** *Hard*

**References:**

1. <https://stackoverflow.com/questions/9232470/performance-rank-vs-sub-query-sub-query-have-lower-cost>

## Day 4 of SQL Advent Calendar

**Today's Question:**

*You’re planning your next ski vacation and want to find the best regions with heavy snowfall. Given the tables resorts and snowfall, find the average snowfall for each region and sort the regions in descending order of average snowfall. Return the columns region and average_snowfall.*

**Table name:** *ski_resorts*

| resort_id |	resort_name |	region |
| -- | -- | -- |
| 1	| Snowy Peaks |	Rocky Mountains |
2 |	Winter Wonderland |	Wasatch Range |
3 |	Frozen Slopes |	Alaska Range |
4 |	Powder Paradise	| Rocky Mountains |

**Table name:** *snowfall*

| resort_id |	snowfall_inches |
| -- | -- |
| 1 |	60 |
| 2	| 45 |
| 3 |	75 |
| 4	| 55 |

**Level of difficulty:** *Medium*
