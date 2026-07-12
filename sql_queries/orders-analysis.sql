SELECT *
FROM order_details;

-- 1. What the date range on order_details table?
SELECT 
MIN(order_date) AS first_date,
MAX(order_date) AS last_date
FROM order_details;

-- 2. How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id) AS num_orders
FROM order_details;

-- 3. How many items were ordered within this date range?
SELECT COUNT(*) AS num_items
FROM order_details;

-- 4. Which orders had them most number of items?
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- 5. How many orders had more than 12 items?
WITH orders_above_12items AS (
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12
)
SELECT COUNT(order_id) AS num_oreders
FROM orders_above_12items
;