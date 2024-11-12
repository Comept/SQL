SELECT name || ' (age:' || age || 
		',gender:''' || gender || 
		''',address:''' || address || ''')'
		AS person_information
	FROM person AS p
		ORDER BY person_information
