--- Count the total number of sales made by the employee with EmployeeID = 2.

use database_1;

SELECT * FROM staff_details;

SELECT EmployeeID, COUNT(*) AS TotalSales
FROM transaction_records
WHERE `EmployeeID` = 2;