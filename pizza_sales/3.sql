-- Identify the highest-priced pizza.

use pizzahut;

select pizza_types.name, pizzas.price
from pizza_types
join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
where pizzas.price = (select max(price) from pizzas);

-- order by pizzas.price desc
-- limit 1;