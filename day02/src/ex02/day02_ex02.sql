SELECT COALESCE(pe.name, '-') AS person_name, pv.visit_date, COALESCE(pi.name, '-') AS pizzeria_name   
	FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-1' AND '2022-01-3') pv
	FULL JOIN person pe ON pe.id = pv.person_id
	FULL JOIN pizzeria pi ON pi.id = pv.pizzeria_id
		ORDER BY person_name, visit_date, pizzeria_name