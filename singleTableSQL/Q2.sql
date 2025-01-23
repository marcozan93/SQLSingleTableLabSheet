-- 0. Initial look at the data
SELECT * FROM pet;

-- 1. The names of owners and their pets where the pet's name ends with “er” or “all”
SELECT owner, name AS pet_name FROM pet WHERE name LIKE '%er' OR name LIKE '%all';

-- 2. The names of any pets whose owner's name contains an "e"
SELECT name FROM pet WHERE owner LIKE '%e%';

-- 3. The names of all pets whose name does not end with "fy"
SELECT name FROM pet WHERE name NOT LIKE '%fy';

-- 4. All pet names whose owners name is only four characters long
SELECT name FROM pet WHERE LENGTH(owner) = 4;

-- 5. All owners whose names begin and end with one of the first five letters of the alphabet
SELECT owner FROM pet WHERE  
    (owner LIKE 'A%' OR owner LIKE 'B%' OR owner LIKE 'C%' OR owner LIKE 'D%' OR owner LIKE 'E%')
    AND
    (owner LIKE '%A' OR owner LIKE '%B' OR owner LIKE '%C' OR owner LIKE '%D' OR owner LIKE '%E'); 
-- SQLite is not case sensitive by default.

-- 6. Repeat the previous query, but make the query sensitive to the case of letters of the alphabet the characters in the name
SELECT DISTINCT owner
FROM pet
WHERE
    (owner GLOB '[A-E]*') -- Starts with A, B, C, D, or E (case-sensitive)
    AND
    (owner GLOB '*[A-E]'); -- Ends with A, B, C, D, or E (case-sensitive)