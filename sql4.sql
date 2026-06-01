INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES (19, 2, 'greek pizza', 800);

-- SELECT * FROM menu
-- WHERE id = 19;


-- DELETE FROM menu
-- WHERE id = 19;

INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES (
		(SELECT MAX(id) + 1 FROM menu),
  		(SELECT id FROM pizzeria WHERE name='Dominos'),
  		'sicilian pizza',
  		900
);



-- DELETE FROM menu
-- WHERE pizza_name = 'sicilian pizza'
--   AND pizzeria_id = (SELECT id FROM pizzeria WHERE name = 'Dominos')
--   AND price = 900;


INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES (
	(SELECT MAX(id) + 1 FROM person_visits),
  	(SELECT id FROM person WHERE name = 'Denis'),
  	(SELECT id FROM pizzeria WHERE name = 'Dominos'),
  	'2022-02-24'
);
INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES (
	(SELECT MAX(id) + 1 FROM person_visits),
  	(SELECT id FROM person WHERE name = 'Irina'),
  	(SELECT id FROM pizzeria WHERE name = 'Dominos'),
  	'2022-02-24'
);


-- DELETE FROM person_visits
-- WHERE (person_id, pizzeria_id, visit_date) = (
--     (SELECT id FROM person WHERE name = 'Denis'),
--     (SELECT id FROM pizzeria WHERE name = 'Dominos'),
--     '2022-02-24'
-- );

-- DELETE FROM person_visits
-- WHERE (person_id, pizzeria_id, visit_date) = (
--     (SELECT id FROM person WHERE name = 'Irina'),
--     (SELECT id FROM pizzeria WHERE name = 'Dominos'),
--     '2022-02-24'
-- );


INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES (
  	(SELECT MAX(id) + 1 FROM person_order),
  	(SELECT id FROM person WHERE name = 'Denis'),
  	(SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
  	'2022-02-24'
);
INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES (
  	(SELECT MAX(id) + 1 FROM person_order),
  	(SELECT id FROM person WHERE name = 'Irina'),
  	(SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
  	'2022-02-24'
);

-- DELETE FROM person_order
-- WHERE (person_id, menu_id, order_date) = (
--     (SELECT id FROM person WHERE name = 'Denis'),
--     (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
--     '2022-02-24'
-- );

-- DELETE FROM person_order
-- WHERE (person_id, menu_id, order_date) = (
--     (SELECT id FROM person WHERE name = 'Irina'),
--     (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
--     '2022-02-24'
-- );

UPDATE menu
SET price = price - price * 0.1
WHERE pizza_name = 'greek pizza';

INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT
		generate_series(
          	(SELECT MAX(id) FROM person_order) + 1,
        	(SELECT MAX(id) FROM person) + (SELECT MAX(id) FROM person_order),
          	1
        ),
        generate_series(
        		(SELECT MIN(id) FROM person), (SELECT MAX(id) FROM person)
        ),
        (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
        '2022-02-25';


DELETE FROM person_order
WHERE order_date='2022-02-25';

DELETE FROM menu
WHERE pizza_name='greek pizza';

-- CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS (
--     SELECT
--     pizzeria.name AS pizzeria_name
--     FROM person_visits
--     INNER JOIN person ON person_visits.person_id = person.id
--     JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
--     JOIN pizzeria ON menu.pizzeria_id= pizzeria.id
--     WHERE person.name = 'Dmitriy' AND visit_date = '2022-01-08' AND price < 800
--     ORDER BY pizzeria_name
-- );

-- INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
-- VALUES (
--         (SELECT MAX(id) FROM person_visits) + 1,
--         (SELECT id FROM person WHERE name = 'Dmitriy'),
--         (SELECT DISTINCT
--             pizzeria.id
--             FROM pizzeria
--             INNER JOIN menu ON pizzeria.id = menu.pizzeria_id
--             JOIN mv_dmitriy_visits_and_eats AS mv ON mv.pizzeria_name != pizzeria.name
--             WHERE menu.price < 800 LIMIT 1),
--         '2022-01-08'
-- );

-- REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

-- INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
-- VALUES (
--         (SELECT MAX(id) FROM person_visits) + 1,
--         (SELECT id FROM person WHERE name = 'Dmitriy'),
--         (SELECT DISTINCT
--             pizzeria.id
--             FROM pizzeria
--             INNER JOIN menu ON pizzeria.id = menu.pizzeria_id
--             WHERE menu.price < 800 AND pizzeria.name != 'Papa Johns' LIMIT 1),
--         '2022-01-08'
-- );

INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES (
    (SELECT MAX(id) FROM person_visits) + 1,
    (SELECT id FROM person WHERE name = 'Dmitriy'),
    (SELECT pizzeria.id
     FROM pizzeria
     JOIN menu ON pizzeria.id = menu.pizzeria_id
     WHERE menu.price < 800 
       AND pizzeria.name != 'Papa Johns'
       -- Исключаем пиццерию, которую уже посетили в этот день
       AND pizzeria.id NOT IN (
           SELECT pizzeria_id FROM person_visits 
           WHERE person_id = (SELECT id FROM person WHERE name = 'Dmitriy') 
           AND visit_date = '2022-01-08'
       )
     LIMIT 1),
    '2022-01-08'
);