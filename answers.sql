-- Use the sales database
USE salesdb;

-- Question 1
-- Get employee details with their officeCode using INNER JOIN
SELECT 
    E.firstName, 
    E.lastName, 
    E.email, 
    E.officeCode
FROM employees E
INNER JOIN offices O ON E.officeCode = O.officeCode;

-- Question 2 🛍️
-- Get product details with productLine using LEFT JOIN
SELECT 
    P.productName, 
    P.productVendor, 
    P.productLine
FROM products P
LEFT JOIN productlines PL ON P.productLine = PL.productLine;

-- Question 3 
-- Get first 10 orders with customerNumber using RIGHT JOIN
SELECT 
    O.orderDate, 
    O.shippedDate, 
    O.status, 
    O.customerNumber
FROM customers C
RIGHT JOIN orders O ON C.customerNumber = O.customerNumber
LIMIT 10;
