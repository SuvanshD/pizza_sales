-- Calculate the percentage contribution of each pizza type to total revenue.

use pizzahut;

-- ROUND(SUM((pizzas.price * order_details.quantity)),2) AS total_sales

-- (pizza_revenue/SUM((pizzas.price * order_details.quantity))) * 100

with revenue_per_pizza as 
(SELECT 
    pizza_types.category, SUM(price * quantity) AS pizza_revenue
FROM
    pizzas
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY category
) 
select 
	category, round((pizza_revenue/SUM(pizza_revenue) over()) * 100,2) AS total_sales_perc 
from revenue_per_pizza 
order by total_sales_perc desc;