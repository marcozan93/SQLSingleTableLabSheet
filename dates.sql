SELECT * FROM pet;

-- SELECT name FROM pet WHERE strftime('%m',birth) = strftime('%m','1000-02-01');

-- SELECT name, strftime('%m', birth) AS birth_month, (JULIANDAY(death) - JULIANDAY(birth))/365 AS age
-- FROM pet;

-- SELECT owner, name, (checkups * 20) AS income FROM pet;

SELECT owner, name, birth, MIN(strftime('%Y',birth)) AS birth FROM pet GROUP BY owner;