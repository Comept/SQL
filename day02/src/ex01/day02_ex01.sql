SELECT di.date
	FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') di
	LEFT JOIN (
		SELECT visit_date 
			FROM person_visits 
			WHERE person_id = 1 OR person_id = 2
		) vd ON vd.visit_date = di.date
	WHERE vd.visit_date IS NULL;