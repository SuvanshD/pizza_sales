-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS hours, COUNT(order_id)
FROM
    orders
GROUP BY hours
ORDER BY hours;