SELECT
    person1.name AS person_name1,
    p2.name AS person_name2,
    person1.address AS common_address
FROM person AS person1
CROSS JOIN person AS p2
    WHERE person1.name != p2.name
        AND person1.address = p2.address
            AND person1.id > p2.id
ORDER BY 1, 2, 3;
