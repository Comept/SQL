SELECT DISTINCT p.id
	FROM person_visits AS pv
	JOIN person AS p ON p.id = pv.person_id
	WHERE pv.visit_date BETWEEN '2022-01-06' AND '2022-01-09'
	  OR pv.pizzeria_id = 2
		ORDER BY p.id DESC
