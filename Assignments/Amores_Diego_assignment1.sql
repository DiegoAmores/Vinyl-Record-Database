-- Diego Amores Assigment 1

-- Question 1
USE ap;
SELECT  vendor_name AS Vendor, 
CONCAT(vendor_contact_last_name, '. ', vendor_contact_first_name) AS 'Vendor Contact',
		vendor_phone AS 'Contact\'s Number',
CONCAT('State: ', vendor_state, ', City: ', vendor_city) AS 'Vendor Location'
FROM vendors
WHERE vendor_state != 'CA'
ORDER BY vendor_state, vendor_city, vendor_name;

-- Question 2
USE om;
SELECT CONCAT(customer_last_name, ', ', customer_first_name) AS customer_name, 
	   order_date, shipped_date, customer_state
FROM customers c
	JOIN orders o
		ON c.customer_id = o.customer_id
WHERE shipped_date IS NOT NULL
UNION 
	SELECT CONCAT(customer_last_name, ', ', customer_first_name) AS customer_name, 
	   order_date, "Not Yet Shipped", customer_state
FROM customers c
	JOIN orders o
		ON c.customer_id = o.customer_id
WHERE shipped_date IS NULL
ORDER BY order_date DESC, shipped_date;

-- Question 3
USE ap;
SELECT vendor_name AS "Vendor Name", 
	   CONCAT(vendor_contacts.first_name, ", ", vendor_contacts.last_name) AS "Vendor Contact Name",
       invoice_total AS "Invoice Total", invoice_due_date AS "Due Date", payment_date AS "Payment Date"
FROM vendors
	LEFT JOIN invoices
		ON vendors.vendor_id = invoices.vendor_id
	LEFT JOIN vendor_contacts
		ON vendors.vendor_id = vendor_contacts.vendor_id
ORDER BY vendor_name;

-- Question 4
USE ap;
SELECT CONCAT(vendor_city, ', ', vendor_state) AS 'Vendor City/State',
	   vendor_name AS 'Vendor Name', invoice_id AS 'Invoice ID', 
       line_item_description AS 'Line Item Description', default_account_number AS 'Account Number'
FROM vendors v
	JOIN invoice_line_items i
		ON v.default_account_number = i.account_number
WHERE vendor_state >= "FL" AND vendor_state <="KS"
ORDER BY vendor_state, vendor_name, vendor_city, line_item_description, invoice_id
