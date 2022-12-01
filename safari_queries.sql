--MVP
--name of animals in a given enclosure
SELECT animals.name AS animal_name FROM enclosures
INNER JOIN animals 
ON enclosures.id = animals.enclosure_id
WHERE enclosures.name = 'BOB';

--name of staff working in a given enclosure
SELECT staff.name AS staff_name FROM enclosures
INNER JOIN assignments 
ON enclosures.id = assignments.enclosure_id
INNER JOIN staff 
ON assignments.employee_id = staff.id
WHERE enclosures.name = 'BOB';

--EXTENSION
--name of staff working in a closed enclosure
SELECT staff.name AS staff_name FROM enclosures
INNER JOIN assignments 
ON enclosures.id = assignments.enclosure_id
INNER JOIN staff 
ON assignments.employee_id = staff.id
WHERE enclosures.closedForMaintence = true;

--name of enclosure where oldest animal lives. if 2 animals are same age, choose alphabetically.
SELECT MAX(animals.age) AS oldest_animals, enclosures.name AS enclosure_name FROM enclosures
INNER JOIN animals 
ON enclosures.id = animals.enclosure_id
GROUP BY enclosure_name
ORDER BY oldest_animals DESC LIMIT 1;

--number of different animal types a given keeper has been assigned to work with.
SELECT COUNT(DISTINCT animals.type) FROM animals
INNER JOIN enclosures
ON enclosures.id = animals.enclosure_id
INNER JOIN assignments 
ON enclosures.id = assignments.enclosure_id
INNER JOIN staff 
ON assignments.employee_id = staff.id
WHERE staff.name = 'Shiro';

--number of different keepers who have been assigned to work in a given enclosure
SELECT COUNT(DISTINCT staff.name) FROM enclosures
INNER JOIN assignments 
ON enclosures.id = assignments.enclosure_id
INNER JOIN staff 
ON assignments.employee_id = staff.id
WHERE enclosures.name = 'BOB';

--names of other animals sharing an enclosure with a given animal.
SELECT animals.name FROM enclosures
INNER JOIN animals 
ON enclosures.id = animals.enclosure_id
WHERE enclosures.name = (SELECT enclosures.name FROM enclosures
INNER JOIN animals 
ON enclosures.id = animals.enclosure_id
WHERE animals.name = 'Batman') AND animals.name != 'Batman';


