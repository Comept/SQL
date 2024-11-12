SELECT pizza_name, p.name, price
	FROM (SELECT pizza_name, pizzeria_id, price FROM menu m WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza') m
	LEFT JOIN pizzeria p ON p.id = m.pizzeria_id
		ORDER BY pizza_name, name