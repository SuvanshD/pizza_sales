-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    name,
    SUM(quantity) AS quantity
FROM
    pizzas
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY name
ORDER BY quantity DESC
LIMIT 5;