SELECT id, name, 
	CASE WHEN p.age BETWEEN 10 AND 20 THEN 'interval #1'
		 WHEN p.age  > 20 AND p.age < 30 THEN 'interval #2'
		 ELSE 'interval #3'
		 END AS interval_info
	FROM person AS p
	ORDER BY interval_info 

