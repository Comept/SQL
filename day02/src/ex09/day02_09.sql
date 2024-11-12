SELECT pe.name
	FROM (
		SELECT id, name 
			FROM person 
			WHERE gender = 'female'
		) pe
		JOIN person_order pe_or ON pe_or.person_id = pe.id
		JOIN menu me ON me.id = pe_or.menu_id
		JOIN person_visits pe_vi ON pe_vi.person_id = pe.id
		JOIN pizzeria pi ON pi.id = pe_vi.pizzeria_id
			WHERE me.pizza_name = 'mushroom pizza' OR me.pizza_name = 'pepperoni pizza'
			ORDER BY name