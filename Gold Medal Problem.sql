--- Write a query to find number of Gold Medal per swimmer for swimmer who won only Godl Medals
--- Logic - Create two lists and Find those who do not appear in that list, and count the number of times they appear in first list
use database_1;

CREATE TABLE olympic_medals (
    ID INT PRIMARY KEY,
    event VARCHAR(10),
    YEAR INT,
    GOLD VARCHAR(50),
    SILVER VARCHAR(50),
    BRONZE VARCHAR(50)
);

INSERT INTO olympic_medals (ID, event, YEAR, GOLD, SILVER, BRONZE) VALUES
(1, '100m', 2016, 'Amthhew Mcgarray', 'donald', 'barbara'),
(2, '200m', 2016, 'Nichole', 'Alvaro Eaton', 'janet Smith'),
(3, '500m', 2016, 'Charles', 'Nichole', 'Susana'),
(4, '100m', 2016, 'Ronald', 'maria', 'paula'),
(5, '200m', 2016, 'Alfred', 'carol', 'Steven'),
(6, '500m', 2016, 'Nichole', 'Alfred', 'Brandon'),
(7, '100m', 2016, 'Charles', 'Dennis', 'Susana'),
(8, '200m', 2016, 'Thomas', 'Dawn', 'catherine'),
(9, '500m', 2016, 'Thomas', 'Dennis', 'paula'),
(10, '100m', 2016, 'Charles', 'Dennis', 'Susana'),
(11, '200m', 2016, 'jessica', 'Donald', 'Stefeney'),
(12, '500m', 2016, 'Thomas', 'Steven', 'Catherine');

SELECT * FROM olympic_medals;

SELECT `GOLD`, COUNT(`GOLD`) AS No_of_Gold_Medals
FROM olympic_medals
WHERE `GOLD` NOT IN
(SELECT SILVER FROM olympic_medals)
AND
`GOLD` NOT IN
(SELECT BRONZE FROM olympic_medals)
GROUP BY `GOLD`;
