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
SELECT enclosures.name AS enclosure_name, MAX(animals.age) AS animal_age FROM enclosures
INNER JOIN animals 
ON enclosures.id = animals.enclosure_id
GROUP BY enclosure_name;