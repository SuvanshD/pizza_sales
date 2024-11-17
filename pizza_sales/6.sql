-- Join the necessary tables to find the total quantity of each pizza category ordered.

use pizzahut;

SELECT 
    category,
    SUM(quantity) AS quantity
FROM
    pizzas
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY category
ORDER BY quantity DESC;