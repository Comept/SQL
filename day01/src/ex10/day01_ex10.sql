SELECT pe.name AS person_name, m.pizza_name, pi.name AS pizzeria_name
	FROM person_visits pe_vi
	JOIN person pe ON pe.id = pe_vi.person_id
	JOIN person_order pe_or ON pe.id = pe_or.person_id
	JOIN menu m ON pe_or.menu_id = m.id
	JOIN pizzeria pi ON pi.id = pe_vi.pizzeria_id
		ORDER BY person_name, pizza_name, pizzeria_name
	