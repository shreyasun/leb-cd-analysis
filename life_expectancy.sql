CREATE DATABASE IF NOT EXISTS life_expectancy_disease_prediction;
USE life_expectancy_disease_prediction;

CREATE TABLE leb (
	`Country Name` TEXT, 
    `2000` DOUBLE,
    `2010` DOUBLE,
    `2015` DOUBLE,
    `2019` DOUBLE
);

/*
LOAD DATA INFILE 'life_expectancy.csv'
INTO TABLE leb
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
*/

SELECT * FROM leb;
DELETE FROM leb WHERE `Country Name`='Country Name';

/** LOWEST LIFE EXPECTANCIES **/
/* Country with the lowest average life expectcomancy for each year (2000, 2010, 2015, 2019) */
SELECT `Country Name`, MIN(`2000`) as lowest_leb_2000
FROM leb
GROUP BY `Country Name`
ORDER BY lowest_leb_2000 asc
LIMIT 1;

SELECT `Country Name`, MIN(`2010`) as lowest_leb_2010
FROM leb
GROUP BY `Country Name`
ORDER BY lowest_leb_2010 asc
LIMIT 1;

SELECT `Country Name`, MIN(`2015`) as lowest_leb_2015
FROM leb
GROUP BY `Country Name`
ORDER BY lowest_leb_2015 asc
LIMIT 1;

SELECT `Country Name`, MIN(`2019`) as lowest_leb_2019
FROM leb
GROUP BY `Country Name`
ORDER BY lowest_leb_2019 asc
LIMIT 1;

/* alternate way to write with subquery */
SELECT `Country Name`, `2019` as lowest_leb_2019
FROM leb
WHERE `2019` = (SELECT MIN(`2019`) FROM life_expectancy_disease_prediction.leb);

/* Percent Difference in lowest life expectancy from 2000 - 2019 */
SELECT MIN(`2019`) as lowest_leb_2019, MIN(`2000`) as lowest_leb_2000, ((MIN(`2019`) - MIN(`2000`)) / MIN(`2000`)) * 100 as percent_diff
FROM leb;

/********************************************************************************************************************/
/** HIGHEST LIFE EXPECTANCIES **/

/* Country with the highest average life expectancy for each year (2000, 2010, 2015, 2019) */
SELECT `Country Name`, MAX(`2000`) as highest_leb_2000
FROM leb
GROUP BY `Country Name`
ORDER BY highest_leb_2000 desc
LIMIT 1;

SELECT `Country Name`, MAX(`2010`) as highest_leb_2010
FROM leb
GROUP BY `Country Name`
ORDER BY highest_leb_2010 desc
LIMIT 1;

SELECT `Country Name`, MAX(`2015`) as highest_leb_2015
FROM leb
GROUP BY `Country Name`
ORDER BY highest_leb_2015 desc
LIMIT 1;

SELECT `Country Name`, MAX(`2019`) as highest_leb_2019
FROM leb
GROUP BY `Country Name`
ORDER BY highest_leb_2019 desc
LIMIT 1;

/* Percent Change in highest life expectancy from 2000 - 2019*/
SELECT MAX(`2019`) as highest_leb_2019, MAX(`2000`) as highest_leb_2000, ((MAX(`2019`) - MAX(`2000`)) / MAX(`2000`)) * 100 as percent_diff
FROM leb;

/********************************************************************************************************************/
/** AVERAGE LIFE EXPECTANCIES **/

/* Average life expectancy globally for each year (2000, 2010, 2015, 2019). */
SELECT AVG(`2000`) as avg_leb_2000, AVG(`2010`) as avg_leb_2010, AVG(`2015`) as avg_leb_2015, AVG(`2019`) as avg_leb_2019
FROM leb;

/* Percent Change in average life expectancy from 2000 - 2019 */
SELECT AVG(`2000`) as avg_leb_2000, AVG(`2019`) as avg_leb_2019, ((AVG(`2019`) - AVG(`2000`)) / AVG(`2000`)) * 100 as percent_diff
FROM leb;

/* Country has the largest change in life expectancy from 2000 to 2019 */
SELECT `Country Name`, AVG(`2000`) as avg_leb_2000, AVG(`2019`) as avg_leb_2019, ((AVG(`2019`) - AVG(`2000`)) / AVG(`2000`)) * 100 as percent_diff
FROM leb
GROUP BY `Country Name`
ORDER BY percent_diff desc
LIMIT 1;

/* Countries where life expectancy decreased from 2000 to 2019 */
SELECT `Country Name`, `2000` as avg_leb_2000, `2019` as avg_leb_2019, (((`2019` - `2000`) / `2000`) * 100) as percent_diff
FROM leb
WHERE `2019` < `2000`;

/*Total number of countries*/
SELECT COUNT(`2000`)
FROM leb;

/* Number of countries where life expectancy is above global average per year (2000, 2010, 2015, 2019) */

SELECT COUNT(*)
FROM leb
WHERE `2000` > (SELECT AVG(`2000`) FROM leb);

SELECT COUNT(*)
FROM leb
WHERE `2010` > (SELECT AVG(`2010`) FROM leb);

SELECT COUNT(*)
FROM leb
WHERE `2015` > (SELECT AVG(`2015`) FROM leb);

SELECT COUNT(*)
FROM leb
WHERE `2019` > (SELECT AVG(`2019`) FROM leb);



