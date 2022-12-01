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