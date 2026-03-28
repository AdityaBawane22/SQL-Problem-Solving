--- Find the FirstName and LastName of all employees who were hired after January 1st, 2023.
SELECT FirstName, LastName, HireDate
FROM staff_details
WHERE HireDate > "2023-01-01";