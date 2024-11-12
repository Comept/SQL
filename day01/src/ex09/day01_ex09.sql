SELECT * 
	FROM pizzeria
	WHERE id NOT IN (SELECT po.pizzeria_id FROM person_visits po);

SELECT * 
	FROM pizzeria p
	WHERE NOT EXISTS (SELECT * FROM person_visits po WHERE po.pizzeria_id = p.id);