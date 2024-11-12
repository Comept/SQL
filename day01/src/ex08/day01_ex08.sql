SELECT order_date, name || ' (возраст:' || p.age || ')' AS person_information
	FROM person_order po
	NATURAL JOIN person p 
		ORDER BY order_date, person_information
