SELECT *
FROM order_details;

SELECT *
FROM menu_items;

SELECT *
FROM order_details o
LEFT JOIN menu_items m
	ON o.item_id = m.menu_item_id;

-- 1. What were the least and most ordered items? What categories were they in?
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details o
LEFT JOIN menu_items m
	ON o.item_id = m.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases;

SELECT item_name, category, COUNT(order_details_id) AS num_item
FROM order_details o
LEFT JOIN menu_items m
	ON o.item_id = m.menu_item_id
WHERE item_name IS NOT NULL
GROUP BY item_name, category
ORDER BY num_item DESC;


-- 2. What were the top 5 orders that spent the most money?
SELECT order_id, SUM(price) AS total_spend
FROM order_details o
LEFT JOIN menu_items m
	ON o.item_id = m.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- 3. View the details of the highest spend order.
SELECT 
category,
COUNT(item_id) AS num_item,
SUM(price) AS total_spend
FROM order_details o
LEFT JOIN menu_items m
	ON o.item_id = m.menu_item_id
WHERE order_id = 440
GROUP BY category
;

-- 4. View the details of the top 5 highest spend orders.
SELECT category, COUNT(item_id) AS num_item, SUM(price) AS total_spend
FROM order_details o
LEFT JOIN menu_items m
	ON o.item_id = m.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY category
;

SELECT order_id, category, COUNT(item_id) AS num_item, SUM(price) AS total_spend
FROM order_details o
LEFT JOIN menu_items m
	ON o.item_id = m.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category
;
