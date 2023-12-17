CREATE DATABASE life_expectancy_disease_prediction;

SELECT * FROM life_expectancy_disease_prediction.leb;
DELETE FROM life_expectancy_disease_prediction.leb WHERE `Country Name`='Country Name';
SELECT * FROM life_expectancy_disease_prediction.ncd;

/** LOWEST LIFE EXPECTANCIES **/
/* What country had the lowest average life expectancy for 2000? */
SELECT `Country Name`, MIN(`2000`) as lowest_leb_2000
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY lowest_leb_2000 asc
LIMIT 1;

/* What country had the lowest average life expectancy for 2010? */
SELECT `Country Name`, MIN(`2010`) as lowest_leb_2010
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY lowest_leb_2010 asc
LIMIT 10;

/* What country had the lowest average life expectancy for 2015? */
SELECT `Country Name`, MIN(`2015`) as lowest_leb_2015
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY lowest_leb_2015 asc
LIMIT 10;

/* What country had the lowest average life expectancy in 2019? */
SELECT `Country Name`, MIN(`2019`) as lowest_leb_2019
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY lowest_leb_2019 asc
LIMIT 10;

/* alternate way to write with subquery */
SELECT `Country Name`, `2019` as lowest_leb_2019
FROM life_expectancy_disease_prediction.leb
WHERE `2019` = (SELECT MIN(`2019`) FROM life_expectancy_disease_prediction.leb);

/* Percent Difference in lowest life expectancy from 2000 - 2019 */
SELECT MIN(`2019`) as lowest_leb_2019, MIN(`2000`) as lowest_leb_2000, ((MIN(`2019`) - MIN(`2000`)) / MIN(`2000`)) * 100 as percent_diff
FROM life_expectancy_disease_prediction.leb;

/********************************************************************************************************************/
/** HIGHEST LIFE EXPECTANCIES **/

DELETE FROM life_expectancy_disease_prediction.leb WHERE `Country Name`='Country Name';

/* What country had the highest average life expectancy for 2000? */
SELECT `Country Name`, MAX(`2000`) as highest_leb_2000
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY highest_leb_2000 desc
LIMIT 10;

/* What country had the highest average life expectancy for 2010? */
SELECT `Country Name`, MAX(`2010`) as highest_leb_2010
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY highest_leb_2010 desc
LIMIT 10;

/* What country had the highest average life expectancy for 2015? */
SELECT `Country Name`, MAX(`2015`) as highest_leb_2015
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY highest_leb_2015 desc
LIMIT 10;

/* What country had the highest average life expectancy in 2019? */
SELECT `Country Name`, MAX(`2019`) as highest_leb_2019
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY highest_leb_2019 desc
LIMIT 10;

/* Percent Difference in highest life expectancy from 2000 - 2019 */
SELECT MAX(`2019`) as highest_leb_2019, MAX(`2000`) as highest_leb_2000, ((MAX(`2019`) - MAX(`2000`)) / MAX(`2000`)) * 100 as percent_diff
FROM life_expectancy_disease_prediction.leb;

/********************************************************************************************************************/
/** AVERGAGE LIFE EXPECTANCIES **/

/* World Average Life Expectancy in 2000, 2010, 2015, 2019 */
SELECT AVG(`2000`) as avg_leb_2000, AVG(`2010`) as avg_leb_2010, AVG(`2015`) as avg_leb_2015, AVG(`2019`) as avg_leb_2019
FROM life_expectancy_disease_prediction.leb;

/* Change in average life expectancy from 2000 to 2019 */
SELECT AVG(`2000`) as avg_leb_2000, AVG(`2019`) as avg_leb_2019, ((AVG(`2019`) - AVG(`2000`)) / AVG(`2000`)) * 100 as percent_diff
FROM life_expectancy_disease_prediction.leb;

/* Country with largest change in average life expectancy from 2000 to 2019 */
SELECT `Country Name`, AVG(`2000`) as avg_leb_2000, AVG(`2019`) as avg_leb_2019, ((AVG(`2019`) - AVG(`2000`)) / AVG(`2000`)) * 100 as percent_diff
FROM life_expectancy_disease_prediction.leb
GROUP BY `Country Name`
ORDER BY percent_diff desc;

/* Countries where life expectancy decreased from 2000 to 2019 */
SELECT `Country Name`, `2000` as avg_leb_2000, `2019` as avg_leb_2019
FROM life_expectancy_disease_prediction.leb
WHERE `2019` < `2000`;

/* Countries where life expectancy is above global average in 2019 */
SELECT `Country Name`, `2019` as leb_2019
FROM life_expectancy_disease_prediction.leb
WHERE `2019` > (SELECT AVG(`2019`) FROM life_expectancy_disease_prediction.leb)


