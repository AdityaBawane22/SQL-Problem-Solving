--- Q7: Find the FirstName and Salary of the employee who has the highest salary in the Staff_Details table.

WITH Temporary_CTE_Table AS (
    SELECT MAX(Salary) AS Highest_Salary
    FROM staff_details
)
SELECT `FirstName`, `LastName`, `Salary`
FROM staff_details 
WHERE `Salary` = (SELECT Highest_Salary FROM `Temporary_CTE_Table`);

SELECT * FROM staff_details;