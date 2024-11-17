-- Join relevant tables to find the category-wise distribution of pizzas.

use pizzahut;

SELECT 
    category, COUNT(name)
FROM
    pizza_types
GROUP BY category;