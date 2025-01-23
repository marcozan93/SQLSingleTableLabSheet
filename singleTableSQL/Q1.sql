-- 0. Initial look at the data
SELECT * FROM pet;

-- 1. The names of owners and their pet's name for all pets who are female.
SELECT DISTINCT name, owner FROM pet WHERE sex='f';

-- 2. The names and birth dates of pets which are dogs.
SELECT name, birth FROM pet WHERE species='dog';

-- 3. The names of the owners of birds.
SELECT DISTINCT owner FROM pet WHERE species='bird';

-- 4. The species of pets who are female.
SELECT DISTINCT species FROM pet WHERE sex='f';

-- 5. The names and birth dates of pets which are cats or birds.
SELECT name, birth FROM pet WHERE species IN ('cat', 'bird');

-- 6. The names and species of pets which are cats or birds and which are female.
SELECT name, species FROM pet WHERE species IN ('cat', 'bird') AND sex='f';
