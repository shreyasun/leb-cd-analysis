USE life_expectancy_disease_prediction;
SELECT * FROM leb;
SELECT * FROM cd;


/* In which countries did the life expectancy increase and mortality rate decrease from 2000 to 2019? */
SELECT leb.`Country Name`,
leb.`2000` as 'leb_2000',
leb.`2019` as 'leb_2019',
cd.`2000` as 'cd_2000',
cd.`2019` as 'cd_2019'
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE leb.`2000` < leb.`2019`
AND cd.`2000` > cd.`2019`;


SELECT COUNT(*)
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE leb.`2000` < leb.`2019`
AND cd.`2000` > cd.`2019`;

/* In which countries did the life expectancy decrease and mortality rate increase from 2000 to 2019? */
SELECT leb.`Country Name`,
leb.`2000` as 'leb_2000',
leb.`2019` as 'leb_2019',
cd.`2000` as 'cd_2000',
cd.`2019` as 'cd_2019'
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE leb.`2000` > leb.`2019`
AND cd.`2000` < cd.`2019`;


SELECT COUNT(*)
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE leb.`2000` > leb.`2019`
AND cd.`2000` < cd.`2019`;


/* What is the average life expectancy of countries in 2019 where the mortality rate increased by more than 5% between 2000 and 2019?*/
SELECT leb.`Country Name`,
leb.`2000` as 'leb_2000',
leb.`2019` as 'leb_2019',
cd.`2000` as 'cd_2000',
cd.`2019` as 'cd_2019',
((cd.`2019` - cd.`2000`) / cd.`2000`) * 100 as 'cd diff'
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE ((cd.`2019` - cd.`2000`) / cd.`2000`) * 100 > 5;


SELECT COUNT(leb.`2019`) as 'Avg_LEB_2019'
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE ((cd.`2019` - cd.`2000`) / cd.`2000`) * 100 > 5;


SELECT AVG(leb.`2019`) as 'Avg_LEB_2019'
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE ((cd.`2019` - cd.`2000`) / cd.`2000`) * 100 > 5;

/* What is the average life expectancy of countries in 2019 where the mortality rate decreased by more than 30% between 2000 and 2019? */

SELECT leb.`Country Name`,
leb.`2000` as 'leb_2000',
leb.`2019` as 'leb_2019',
cd.`2000` as 'cd_2000',
cd.`2019` as 'cd_2019',
((cd.`2019` - cd.`2000`) / cd.`2000`) * 100 as 'cd diff'
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE ((cd.`2019` - cd.`2000`) / cd.`2000`) * 100 < -30;


SELECT COUNT(leb.`2019`) as 'Avg_LEB_2019'
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE ((cd.`2019` - cd.`2000`) / cd.`2000`) * 100 < -30;


SELECT AVG(leb.`2019`) as 'Avg_LEB_2019'
FROM leb
JOIN cd on leb.`Country Name` = cd.`Country Name`
WHERE ((cd.`2019` - cd.`2000`) / cd.`2000`) * 100 < -30;