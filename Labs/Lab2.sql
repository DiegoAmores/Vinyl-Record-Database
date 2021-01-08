USE om;

-- Question 3
CREATE TABLE orders_copy AS
SELECT *
FROM orders;

CREATE TABLE order_details_copy AS
SELECT *
FROM orders;

-- Question 4
SET SQL_SAFE_UPDATES = 0;

DELETE FROM orders_copy
WHERE ship_date != null;

-- Question 5
UPDATE order_details_copy
SET order_qty =+ 2
WHERE order_id = 829 AND item_id = 5;

-- Question 6
INSERT INTO customers_copy
VALUES(27, 'guy', 'dude', '1 ABC St', 'Towson', 'MD', '12345', '1234567890', null);

-- Question 7
SELECT order_id, count(order_qty)
FROM order_details_copy
WHERE order_od = 829;



	


