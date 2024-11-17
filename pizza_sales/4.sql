-- Identify the most common pizza size ordered.
use pizzahut;

SELECT 
    pizzas.size, COUNT(order_details.order_details_id) as order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC
LIMIT 1;

-- select pizzas.size, count(pizzas.size)
-- from pizzas 
-- group by pizzas.size
-- order by count(pizzas.size) desc limit 1;

