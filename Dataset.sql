use database_1;

CREATE TABLE SALES_DATA (
    SALE_ID INT,
    SALE_DATE DATE,
    REGION VARCHAR(50),
    PRODUCT_NAME VARCHAR(50),
    AMOUNT DECIMAL(10, 2)
);

INSERT INTO SALES_DATA VALUES 
(1, '2026-01-01', 'North', 'Laptop', 1200),
(2, '2026-01-02', 'North', 'Mouse', 25),
(3, '2026-01-02', 'South', 'Laptop', 1300),
(4, '2026-01-03', 'North', 'Laptop', 1200),
(5, '2026-01-03', 'East', 'Monitor', 300),
(6, '2026-01-04', 'South', 'Monitor', 350),
(7, '2026-01-04', 'North', 'Mouse', 30),
(8, '2026-01-05', 'East', 'Laptop', 1250);

SELECT * FROM sales_data;
