-- --- Question: Write a query to find all employees who work in the 'IT' department and earn more than 
--70,000. Return their full names (First and Last) and their Salary.
use database_1;

SELECT * FROM staff_details;
SELECT * FROM transaction_records;

SELECT Department, FirstName, LastName, Salary
FROM staff_details
WHERE `Department` = 'IT'AND `Salary` > 70000;