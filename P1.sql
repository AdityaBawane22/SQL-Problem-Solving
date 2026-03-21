USE database_1;

SHOW tables;

SELECT * FROM sales_data;

-- 1. Write a query to list all unique PRODUCT_NAME values from the SALES_DATA table, and only show the top 2 records from the results.
SELECT DISTINCT PRODUCT_NAME
FROM SALES_DATA
LIMIT 2;

-- 2. Display the SALE_DATE, PRODUCT_NAME, and AMOUNT for all sales where the AMOUNT is greater than 300. Sort these results by AMOUNT in ascending order (smallest to largest).
SELECT * FROM sales_data;

SELECT SALE_DATE, PRODUCT_NAME, AMOUNT
FROM SALES_DATA
WHERE AMOUNT > 300
ORDER BY AMOUNT ASC;

-- 3. For each REGION, calculate the total sales (sum of AMOUNT). Display only the regions where the total sales amount is greater than 1500.
SELECT SALES_DATA.REGION, SUM(AMOUNT) AS Total_Sales
FROM SALES_DATA
GROUP BY SALES_DATA.REGION
HAVING SUM(sales_data.amount) > 1500;

-- 4. Using the SALES_DATA table, display the SALE_DATE, PRODUCT_NAME, and AMOUNT. Add a new column called Running_Total that shows the cumulative sum of AMOUNT ordered by SALE_DATE.
-- Cumulative Total shows what has happened so far
SELECT * FROM SALES_DATA;

SELECT SALE_DATE, PRODUCT_NAME, AMOUNT,
SUM(AMOUNT) OVER (ORDER BY SALE_DATE) AS Running_Total
FROM sales_data;

-- 5. Display the REGION, PRODUCT_NAME, and AMOUNT. Add a new column called Region_Rank that ranks the products within each region based on their AMOUNT (highest amount gets Rank 1).

SELECT REGION, PRODUCT_NAME, AMOUNT, 
RANK ()
OVER (PARTITION BY REGION
    ORDER BY AMOUNT DESC) AS Region_Rank
FROM sales_data;