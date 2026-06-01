WITH RECURSIVE path AS (
    SELECT 
        city_1 AS route_start, 
        city_1, 
        city_2, 
        cost, 
        cost AS total, 
        1 AS level 
    FROM my_city 
    WHERE city_1 = 'a'

    UNION

    SELECT 
        CONCAT(path.route_start, ',', path.city_2) AS route_start,
        my_city.city_1,
        my_city.city_2,
        my_city.cost,
        path.total + my_city.cost AS total,
        path.level + 1 AS level
    FROM my_city
    JOIN path ON my_city.city_1 = path.city_2
    WHERE path.level < (SELECT COUNT(DISTINCT city_1) - 1 FROM my_city)
        AND strpos(CONCAT(path.route_start, ',', path.city_2), my_city.city_2) = 0
),

final_tour AS (
    SELECT 
        path.total + my_city.cost AS total_cost,
        CONCAT('{', path.route_start, ',', my_city.city_1, ',', my_city.city_2, '}') AS tour
    FROM my_city
    JOIN path ON path.city_2 = my_city.city_1
    WHERE my_city.city_2 = 'a' 
        AND path.level = (SELECT COUNT(DISTINCT city_1) - 1 FROM my_city)
)

SELECT * FROM final_tour 
WHERE total_cost = (SELECT MIN(total_cost) FROM final_tour)
OR total_cost = (SELECT MAX(total_cost) FROM final_tour)
ORDER BY total_cost, tour;



-- Добавьте возможность вывести дополнительные строки 
-- с самой высокой стоимостью к SQL-запросу из предыдущего упражнения.
-- Отсортируйте результат сначала по total_cost, а затем по маршруту (tour).