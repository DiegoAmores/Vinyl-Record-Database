-- Question 2 method 1
SELECT DISTINCT vendor_name, vendor_contact_first_name, vendor_state
FROM vendors
	JOIN invoices
		USING(vendor_id)
WHERE invoice_id IN
(
	SELECT invoice_id
    FROM invoice_line_items
    WHERE line_item_amount < 100
)
ORDER BY vendor_contact_first_name;

-- Question 2 method 2
SELECT vendor_name, vendor_contact_first_name, vendor_state
FROM vendors
WHERE vendor_id IN
(
	SELECT vendor_id
    FROM invoice_line_items
    JOIN invoices
    USING(invoice_id)
    WHERE line_item_amount < 100
)
ORDER BY vendor_contact_first_name;

-- Question 3
USE ap;
SELECT vendor_name AS "Vendor Name", invoice_number AS "Invoice Number",
		CAST(invoice_date AS DATETIME) AS "Invoice Date/Time",
        CONCAT('$', FORMAT(invoice_total, 2)) AS "Invoice Amount"
FROM vendors JOIN invoices i
	USING(vendor_id)
WHERE invoice_total < 100 AND invoice_date =
(
	SELECT max(invoice_date)
    FROM invoices
    WHERE vendor_id = i.vendor_id
) 
ORDER BY invoice_total;

-- Question 4
SELECT UPPER(vendor_name) AS "Vendor Name",
		lOWER(vendor_contact_first_name) AS "Contact Person",
REPLACE(REPLACE(vendor_phone, '(', ''), ') ', '-') AS "Vendor Phone",
        DATE_FORMAT(MAX(invoice_date), '%Y, %M %d') AS "Latest_Invoice"
FROM vendors JOIN invoices
	USING(vendor_id)
GROUP BY vendor_name
ORDER BY invoice_date;

