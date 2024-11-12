SELECT  pizza_name, pi.name AS pizzeria_name
	FROM (
		SELECT id FROM person 
		  WHERE name = 'Denis' OR name = 'Anna'
	) pe
	JOIN person_order pe_or ON pe_or.person_id = pe.id
	JOIN menu m ON m.id = pe_or.menu_id
	JOIN person_visits pe_vi ON pe_vi.person_id = pe.id
	JOIN pizzeria pi ON pi.id = pe_vi.pizzeria_id
		ORDER BY pizza_name, pizzeria_name