SELECT temp_pizza.pizza_name, pizzeria.name AS pizzeria_name, temp_pizza.price
FROM
    (SELECT * FROM menu
        WHERE pizza_name='mushroom pizza' OR pizza_name='pepperoni pizza') AS temp_pizza
FULL JOIN pizzeria ON temp_pizza.pizzeria_id = pizzeria.id WHERE temp_pizza.pizza_name IS NOT NULL
ORDER BY pizza_name, pizzeria_name;
