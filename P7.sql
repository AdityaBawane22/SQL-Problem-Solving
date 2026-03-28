-- Calculate the total SaleAmount (sum) for all transactions in the 'Electronics' category.
SELECT Category, SUM(SaleAmount) AS Total_Sales
FROM transaction_records
WHERE Category = 'Electronics';