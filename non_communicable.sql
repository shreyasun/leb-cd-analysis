USE life_expectancy_disease_prediction;

CREATE TABLE cd (
	`Country Name` TEXT, 
    `2000` DOUBLE,
    `2010` DOUBLE,
    `2015` DOUBLE,
    `2019` DOUBLE
);

SELECT * FROM cd;
DELETE FROM cd WHERE `Country Name`='Country Name';

/* Country with the lowest mortality rate by CD's per year (2000, 2010, 2015, 2019) */
SELECT `Country Name`, MIN(`2000`) as lowest_cd_2000
FROM cd
GROUP BY `Country Name`
ORDER BY lowest_cd_2000 asc
LIMIT 1;

SELECT `Country Name`, MIN(`2010`) as lowest_cd_2010
FROM cd
GROUP BY `Country Name`
ORDER BY lowest_cd_2010 asc
LIMIT 1;

SELECT `Country Name`, MIN(`2015`) as lowest_cd_2015
FROM cd
GROUP BY `Country Name`
ORDER BY lowest_cd_2015 asc
LIMIT 1;

SELECT `Country Name`, MIN(`2019`) as lowest_cd_2019
FROM cd
GROUP BY `Country Name`
ORDER BY lowest_cd_2019 asc
LIMIT 1;

/* Country with the highest mortality rate by CD's per year (2000, 2010, 2015, 2019) */
SELECT `Country Name`, MAX(`2000`) as highest_cd_2000
FROM cd
GROUP BY `Country Name`
ORDER BY highest_cd_2000 desc
LIMIT 1;

SELECT `Country Name`, MAX(`2010`) as highest_cd_2010
FROM cd
GROUP BY `Country Name`
ORDER BY highest_cd_2010 desc
LIMIT 1;

SELECT `Country Name`, MAX(`2015`) as highest_cd_2015
FROM cd
GROUP BY `Country Name`
ORDER BY highest_cd_2015 desc
LIMIT 1;

SELECT `Country Name`, MAX(`2019`) as highest_cd_2019
FROM cd
GROUP BY `Country Name`
ORDER BY highest_cd_2019 desc
LIMIT 1;

/* Which country experienced the highest decrease in mortality rate by CDs between 2000 to 2019? */

SELECT `Country Name`, `2000`, `2019`, (`2019` - `2000`) as percent_change
FROM cd
GROUP BY `Country Name`, `2000`, `2019`
ORDER BY percent_change asc
LIMIT 1;

/*Which country experienced the highest increase in mortality rate by CDs between 2000 to 2019? */

SELECT `Country Name`, `2000`, `2019`, (`2019` - `2000`) as percent_change
FROM cd
GROUP BY `Country Name`, `2000`, `2019`
ORDER BY percent_change desc
LIMIT 1;

/* What is the global average mortality rate by CDs for each year (2000, 2010, 2015, 2019)? */

SELECT AVG(`2000`) as '2000'
FROM cd
GROUP BY `Country Name`
LIMIT 1;

SELECT AVG(`2010`) as '2010'
FROM cd
GROUP BY `Country Name`
LIMIT 1;

SELECT AVG(`2015`) as '2015'
FROM cd
GROUP BY `Country Name`
LIMIT 1;

SELECT AVG(`2019`) as '2019'
FROM cd
GROUP BY `Country Name`
LIMIT 1;

SELECT AVG(`2000`) as '2000', AVG(`2019`) as '2019', (((AVG(`2019`) - AVG(`2000`)) / AVG(`2000`)) * 100) as percent_change
FROM cd;