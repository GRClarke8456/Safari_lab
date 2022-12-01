--MVP
--name of animals in a given enclosure
SELECT animals.name AS animal_name FROM enclosures
INNER JOIN animals 
ON enclosures.id = animals.enclosure_id
WHERE enclosure.name = 'BOB';

--name of staff working in a given enclosure
SELECT staff.name AS staff_name FROM enclosures
INNER JOIN assignments 
ON enclosures.id = assignment.enclosure_id
INNER JOIN staff 
ON assignment.employee_id = staff.id
WHERE enclosure.name = 'BOB';

--EXTENSION
--name of staff working in a closed enclosure
SELECT staff.name AS staff_name FROM enclosures
INNER JOIN assignments 
ON enclosures.id = assignment.enclosure_id
INNER JOIN staff 
ON assignment.employee_id = staff.id
WHERE enclosure.closedForMaintence = 'BOB';

--name of enclosure where oldest animal lives. if 2 animals are same age, choose alphabetically.
SELECT enclosure.name AS enclosure_name, MAX(animals.age) AS animal_age FROM enclosures
INNER JOIN animals 
ON enclosures.id = animals.enclosure_id
ORDER BY ASC animals.name;