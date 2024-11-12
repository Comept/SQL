WITH cte(missing_date) AS (
	SELECT di.date AS missing_date 
		FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') di
	)

SELECT missing_date 
	FROM cte 
	LEFT JOIN (
		SELECT visit_date 
		FROM person_visits 
			   WHERE person_id = 1 OR person_id = 2
		) vd ON vd.visit_date = cte.missing_date
	WHERE vd.visit_date IS NULL;