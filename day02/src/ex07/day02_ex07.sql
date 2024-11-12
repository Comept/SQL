SELECT DISTINCT pi.name AS pizzeria_name
	FROM (SELECT id FROM person WHERE name = 'Dmitriy') pe
		JOIN person_order pe_or ON pe_or.person_id = pe.id
		JOIN menu m ON m.id = pe_or.menu_id
		JOIN person_visits pe_vi ON pe_vi.person_id = pe.id
		JOIN pizzeria pi ON pi.id = pe_vi.pizzeria_id
		WHERE pe_vi.visit_date = '2022-01-08' and m.price < 800
			ORDER BY pizzeria_name