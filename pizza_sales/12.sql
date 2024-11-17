-- Analyze the cumulative revenue generated over time.

use pizzahut;

with revenue_per_day as (select orders.order_date , sum(order_details.quantity*pizzas.price) as revenue
from orders join order_details on orders.order_id = order_details.order_id
join pizzas on pizzas.pizza_id = order_details.pizza_id
group by orders.order_date)

select order_date, sum(revenue) over(order by order_date )
from revenue_per_day
;