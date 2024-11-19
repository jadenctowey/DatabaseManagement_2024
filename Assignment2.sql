CREATE TABLE Patient(
    patientID INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    dob DATE,
    phone VARCHAR(20),
    PRIMARY KEY(patientID)
);

ALTER TABLE Patient
ADD COLUMN address VARCHAR(50);

DROP TABLE Patient;


SELECT FirstName, LastName, Email
FROM employees;

SELECT EmployeeId
FROM employees
WHERE HireDate BETWEEN '2004-01-01' AND '2004-12-31';

SELECT *
FROM employees
WHERE Title LIKE '%Manager%';

SELECT DISTINCT BillingCity
FROM invoices;

SELECT DISTINCT BillingCountry
FROM invoices
WHERE Total > 10 AND InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31';

SELECT customers.State
FROM customers
LEFT JOIN employees
ON employees.State = customers.State
WHERE employees.State = NULL;

SELECT Phone
FROM customers
UNION
SELECT Phone
FROM employees;

SELECT employees.FirstName
FROM  employees
INNER JOIN customers
    ON employees.FirstName = customers.FirstName; 