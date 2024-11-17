-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

use pizzahut;

select name , revenue from
(select category, name, revenue, rank() over(partition by category order by revenue desc) as rn from
(select pizza_types.category , pizza_types.name , sum(order_details.quantity* pizzas.price) as revenue
from order_details 
join pizzas on pizzas.pizza_id = order_details.pizza_id
join pizza_types on pizza_types.pizza_type_id = pizzas.pizza_type_id
group by category, name)as a) as b
where rn<=3;
