USE restaurant_db;

SELECT *
FROM menu_items;

-- 1. Find the number of items on the menu.
SELECT COUNT(*) AS num_items
FROM menu_items;

-- 2. What are the least and most expensive item on the menu?
SELECT *
FROM menu_items
ORDER BY price
LIMIT 1;

SELECT *
FROM menu_items
ORDER BY price DESC
LIMIT 1;

-- 3. How many italian dishes are on the menu?
SELECT COUNT(*) AS num_items
FROM menu_items
WHERE category = 'Italian';

-- 4. What are the least and most expensive item italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price
LIMIT 1;

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
LIMIT 1;

-- 5. How many dishes are in each category? What is the average dish price within each category?
SELECT category,
COUNT(*) AS num_dishes,
ROUND(AVG(price), 2) AS avg_price
FROM menu_items
GROUP BY category;
