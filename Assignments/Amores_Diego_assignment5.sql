-- Diego Amores
-- Question 1
SET SQL_SAFE_UPDATES = FALSE;
SET GLOBAL max_connections = 51;
SET SESSION autocommit = OFF;
SET SESSION autocommit = ON;
SET GLOBAL long_query_time = 7;
SET SESSION CTE_MAX_RECURSION_DEPTH = 500;

-- Question 2
USE my_guitar_shop;

CREATE USER  thechild@localhost IDENTIFIED BY 'yoda';
ALTER USER thechild@localhost PASSWORD EXPIRE INTERVAL 60 DAY;

CREATE USER moff@localhost IDENTIFIED BY 'gideon';
ALTER USER moff@localhost PASSWORD EXPIRE INTERVAL 60 DAY;

CREATE USER din_superuser@localhost IDENTIFIED BY 'beskar';
ALTER USER din_superuser@localhost PASSWORD EXPIRE INTERVAL 60 DAY;

CREATE USER omera_dev@localhost IDENTIFIED BY 'sorgan';
ALTER USER omera_dev@localhost PASSWORD EXPIRE INTERVAL 60 DAY;

RENAME USER thechild@localhost TO grogu@localhost;
ALTER USER grogu@localhost IDENTIFIED BY 'jedi';

DROP USER moff@localhost;

-- Question 3
GRANT  SELECT, INSERT, DELETE, UPDATE
ON my_guitar_shop.*
TO din_superuser@localhost;

GRANT SELECT, INSERT, UPDATE
ON my_guitar_shop.*
TO omera_dev@localhost;

GRANT SELECT
ON my_guitar_shop.*
TO grogu@localhost;

GRANT UPDATE
ON my_guitar_shop.customers
TO grogu@localhost;

REVOKE ALL, GRANT OPTION
FROM grogu@localhost;

REVOKE INSERT
ON my_guitar_shop.* FROM omera_dev@localhost;

-- Question 4
SELECT
	user, host
FROM mysql.user
ORDER BY host, user;

SHOW GRANTS;

SHOW GRANTS FOR grogu@localhost;
SHOW GRANTS FOR din_superuser@localhost;
SHOW GRANTS FOR omera_dev@localhost;

-- Drops all the remaining users
DROP USER din_superuser@localhost;
DROP USER omera_dev@localhost;
DROP USER grogu@localhost;