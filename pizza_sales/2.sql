-- Calculate the total revenue generated from pizza sales.

use pizzahut;

SELECT 
    ROUND(SUM((pizzas.price * order_details.quantity)),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id