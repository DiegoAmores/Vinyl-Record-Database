-- Diego Amores 
-- Question 1
USE ap;

CREATE OR REPLACE VIEW overdue_account AS
	SELECT vendor_name AS `Vendor Name`, invoice_due_date AS `Invoice Due Date`, terms_due_days AS `Terms Due Days`,
		   DATEDIFF("2014-09-10", invoice_date) AS `Days from 2014-09-10`, DATEDIFF("2014-09-10", invoice_date) - terms_due_days AS `Days Invoice Overdue`, 
           invoice_total - (payment_total + credit_total) AS `Total Balance Due`
	FROM vendors
		JOIN invoices
			USING (vendor_id)
		JOIN terms
			USING(terms_id)
	WHERE invoice_total - (payment_total + credit_total) > 0 AND DATEDIFF("2014-09-10", invoice_date) - terms_due_days > 0
	ORDER BY `Days Invoice Overdue` DESC, vendor_name;
    
SELECT * FROM overdue_account;

-- Question 2
DROP PROCEDURE IF EXISTS owed_to_state_vendors;

DELIMITER //

CREATE PROCEDURE owed_to_state_vendors (
	IN	state_abbr_param	VARCHAR(50)
)
BEGIN
	SELECT vendor_name AS `Vendor Name`, invoice_total - (payment_total + credit_total) AS `Total Balance Due` 
    FROM vendors
		JOIN invoices
			USING(vendor_id)
    WHERE vendor_state = state_abbr_param AND invoice_total - (payment_total + credit_total) > 0;

END //

DELIMITER ;

-- --> TEST YOUR CODE:
CALL owed_to_state_vendors('CA');

-- Question 3
USE ap;

DROP TRIGGER IF EXISTS new_invoice_row;

DELIMITER //

CREATE TRIGGER new_invoice_row
	AFTER INSERT ON invoices
	FOR EACH ROW
	
BEGIN
	DECLARE invoice_id_var INT;
	DECLARE invoice_total_var DECIMAL (9,2);
	DECLARE vendor_id_var INT;
	DECLARE vendor_name_var VARCHAR(30);

	SET invoice_id_var = NEW.invoice_id;
    SET invoice_total_var = NEW.invoice_total;
	SET vendor_id_var = NEW.vendor_id;
    
	SELECT vendor_name INTO vendor_name_var FROM vendors WHERE vendor_id = vendor_id_var;
	INSERT INTO new_invoice_records
			VALUES (invoice_id_var, CONCAT("You have added a new invoice from ", vendor_name_var, " with an invoice total of $", invoice_total_var), NOW());
END//

DELIMITER ;

-- --> Test your code:
INSERT INTO invoices VALUES (118,34,'ZXA-080','2018-02-01',14092.59,0,0,3,'2018-03-01', NULL);
SELECT * FROM new_invoice_records;