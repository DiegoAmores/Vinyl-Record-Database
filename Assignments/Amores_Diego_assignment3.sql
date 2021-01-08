-- Diego Amores Assigment 3

-- Question 1
SELECT product_name AS "Product Name", SUM(quantity) AS "Number Purchased",
	   CONCAT("$ ", FORMAT(SUM(quantity*item_price) - SUM(quantity*discount_amount), 2)) AS "Total of Orders", 
	   CONCAT("$ ", FORMAT(AVG(discount_amount), 2)) AS "Average Discount"
FROM order_items
	JOIN products
		USING(product_id)
GROUP BY 
	product_name
    WITH ROLLUP 
ORDER BY product_name IS NULL, product_name ASC;

-- Question 2
SELECT product_name AS "Product", 
	CONCAT("$ ", FORMAT(list_price, 2)) AS "List Price", 
    category_name AS "Category", `description` AS "Description"
FROM products
	JOIN categories
		USING(category_id)
WHERE list_price <
	(SELECT AVG(item_price)
    FROM order_items
		JOIN orders
			USING(order_id)
	WHERE ship_date IS NOT NULL)
ORDER BY list_price ASC;


-- Question 3 Part 1
WITH not_east_coast AS (
	SELECT customer_id, CONCAT(last_name, ", ", first_name) AS customer_name,
						CONCAT(line1, " ", line2) AS address, city AS customer_city, state AS customer_state
	FROM customers
		JOIN addresses
			USING(customer_id)
	WHERE state != "NJ" AND state != "NY"
    GROUP BY customer_id
	ORDER BY customer_id
    
)

SELECT not_east_coast.customer_id, not_east_coast.customer_name, not_east_coast.address, 
	not_east_coast.customer_city, not_east_coast.customer_state
FROM not_east_coast;

-- Question 3 Part 2
WITH not_east_coast AS (
	SELECT customer_id, CONCAT(last_name, ", ", first_name) AS customer_name,
						CONCAT(line1, " ", line2) AS address, city AS customer_city, state AS customer_state
	FROM customers
		JOIN addresses
			USING(customer_id)
	WHERE state != "NJ" AND state != "NY"
    GROUP BY customer_id
	ORDER BY customer_id
    
)

SELECT not_east_coast.customer_name, orders.order_id, orders.order_date, products.product_name, not_east_coast.address, 
	not_east_coast.customer_state, order_items.item_price
FROM not_east_coast
	JOIN orders
		USING(customer_id)
	JOIN order_items
		USING(order_id)
	JOIN products
		USING(product_id)
ORDER BY customer_name, order_id DESC, product_name DESC, item_price DESC;