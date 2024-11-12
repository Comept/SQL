SELECT (SELECT name 
		FROM person AS p
	   	WHERE p.id = po.person_id)
	FROM person_order AS po
	WHERE po.menu_id = 13 OR po.menu_id = 14 OR po.menu_id = 18 OR po.order_date = '2022=01-07' 
		ORDER BY name