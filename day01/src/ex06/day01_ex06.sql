SELECT t.order_date AS action_date, p.name AS person_name 
    From person p
    JOIN (      
            SELECT order_date, person_id 
                FROM person_order
        INTERSECT 
            SELECT visit_date, person_id 
                FROM person_visits
        ) AS t ON t.person_id = p.id
        ORDER BY action_date ASC, person_name DESC