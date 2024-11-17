-- Determine the top 3 most ordered pizza types based on revenue.

use pizzahut;

SELECT 
    name, SUM(price * quantity) AS pizza_revenue
FROM
    pizzas
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY name
ORDER BY pizza_revenue DESC
LIMIT 3;
