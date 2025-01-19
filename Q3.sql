-- 0. See the data
SELECT * FROM pet;

-- 1. The average number of check-ups that each owner has made with their pets
SELECT owner, AVG(checkups) AS average_n_checkups FROM pet GROUP BY owner;

-- 2. The number of pets of each species in ascending order
SELECT species, COUNT(species) AS count FROM pet GROUP BY species ORDER BY species;

-- 3. The number of pets of each species that each owner has
SELECT owner, species, COUNT(species) AS count FROM pet GROUP BY owner, species;

-- 4. The number of distinct species of pet each owner has
SELECT owner, COUNT(DISTINCT species) AS n_distinct_species FROM pet GROUP BY owner;

-- 5. The number of pets of each gender there are in the database, where the gender is known
SELECT sex, COUNT(sex) AS n FROM (SELECT * FROM pet WHERE sex IN ('m', 'f')) GROUP BY sex;

-- 6. The number of birds each owner has
SELECT owner, COUNT(species) AS n_birds FROM (SELECT * FROM pet WHERE species='bird') GROUP BY owner;

-- 7. The total number of check-ups each owner has made with all their pets
SELECT owner, SUM(checkups) AS total_checkups FROM pet GROUP BY owner ORDER BY total_checkups DESC;