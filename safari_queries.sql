
SELECT animals.name AS name FROM enclosures
INNER JOIN animals 
ON enclosures.id = animals.enclosure_id
WHERE enclosure.name = 'BOB';