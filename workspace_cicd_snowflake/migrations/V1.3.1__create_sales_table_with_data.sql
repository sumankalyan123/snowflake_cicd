-- Migration: V1.3.1__create_sales_table_with_data.sql
-- Description: Create SALES table in BRONZE schema with sample data
-- Created: $(date)

-- Create SALES table in BRONZE schema
CREATE TABLE DEMO_SCHEMA_DRIFT.BRONZE.SALES
(
   SALE_ID NUMBER(38,0) PRIMARY KEY
  ,PRODUCT_NAME VARCHAR(100)
  ,QUANTITY NUMBER(10,0)
  ,UNIT_PRICE NUMBER(10,2)
  ,SALE_DATE DATE
);

-- Insert 10 sample rows
INSERT INTO DEMO_SCHEMA_DRIFT.BRONZE.SALES VALUES
(1, 'Laptop Pro', 2, 1299.99, '2024-01-15'),
(2, 'Wireless Mouse', 5, 29.99, '2024-01-16'),
(3, 'Keyboard', 3, 79.99, '2024-01-17'),
(4, 'Monitor 24"', 1, 299.99, '2024-01-18'),
(5, 'Laptop Pro', 1, 1299.99, '2024-01-19'),
(6, 'USB Cable', 10, 9.99, '2024-01-20'),
(7, 'Headphones', 2, 149.99, '2024-01-21'),
(8, 'Webcam', 1, 89.99, '2024-01-22'),
(9, 'Laptop Pro', 1, 1299.99, '2024-01-23'),
(10, 'Mouse Pad', 3, 12.99, '2024-01-24');
