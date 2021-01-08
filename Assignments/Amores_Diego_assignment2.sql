-- Diego Amores

-- Question 1
USE my_guitar_shop;

DROP TABLE IF EXISTS customers_copy;
CREATE TABLE  customers_copy LIKE customers;
INSERT INTO customers_copy
SELECT *
FROM customers;

DROP TABLE IF EXISTS products_copy;
CREATE TABLE products_copy LIKE products;
INSERT INTO products_copy
SELECT *
FROM products;

DROP TABLE IF EXISTS addresses_copy;
CREATE TABLE  addresses_copy LIKE addresses;
INSERT INTO addresses_copy
SELECT *
FROM addresses;

-- Question 2
INSERT customers_copy
	(customer_id, email_address, `password`, first_name, last_name, shipping_address_id, billing_address_id)
VALUES
	(LAST_INSERT_ID(), "pduffy@murach.com", "7a718fbd768d2378z511f8249b54897f940e9023", "Pamela", "Duffy", 10, 1);
    
-- Question 3
INSERT products_copy
	(product_id, category_id, product_code, product_name, `description`, list_price, discount_percent, date_added)
VALUES
	(11, 4, "pk_100", "Yamaha PK-100", "The Yamaha PK-100 88-key weighted action digital piano has a Graded Hammer 
										Standard Action, 192-note Polyphony, 24 Sounds, Stereo Sound System, EQ, and
                                        Drum Patterns/Virtual Accompaniment - Black",
	 749.99, 25.00, now());
     
-- Question 4
UPDATE products_copy
SET list_price = 1300.00,
	discount_percent = 65.00
WHERE product_id = 11;

-- Question 5
SET SQL_SAFE_UPDATES = 0;
UPDATE addresses_copy
SET disabled = 1
WHERE state = "NJ" OR state = "NY";

SET SQL_SAFE_UPDATES = 1;

-- Question 6
SELECT CONCAT(first_name, ", ", last_name) AS 'customer_names\'', 
	   ((quantity*(item_price - discount_amount)) + ship_amount + tax_amount) AS total_amount_owed,
	   CONCAT(line1, " ", line2, " ", city, ", ", state, " ", zip_code ) AS addresses, state
FROM orders
	JOIN order_items
		USING(order_id)
	JOIN customers_copy
		USING(customer_id)
	JOIN addresses_copy
		ON addresses_copy.address_id = customers_copy.shipping_address_id
	JOIN products_copy
		USING(product_id)
WHERE order_items.product_id = 5;

DELETE orders, order_items
FROM orders
	JOIN order_items
		USING(order_id)
WHERE product_id = 5 AND orders.order_id = order_items.order_id;