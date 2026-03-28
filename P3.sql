-- List all unique (distinct) categories of items sold in the Transaction_Records table.

USE database_1;
SELECT * FROM staff_details;
SELECT * FROM transaction_records;

SELECT DISTINCT category
FROM transaction_records;