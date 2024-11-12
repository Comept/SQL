SELECT p1.name AS person_name1, P2.name AS person_name2, address
	FROM person p1
	JOIN person p2 USING(address)
	WHERE p1.id > p2.id
		ORDER BY person_name1, person_name2, address