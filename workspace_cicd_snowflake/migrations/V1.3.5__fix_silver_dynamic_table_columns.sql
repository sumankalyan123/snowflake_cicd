-- Migration: V1.3.5__fix_silver_dynamic_table_columns.sql
-- Description: Fix SILVER dynamic table to maintain same columns as BRONZE
-- Created: $(date)

-- Recreate SILVER dynamic table with same columns as BRONZE
CREATE OR REPLACE DYNAMIC TABLE DEMO_SCHEMA_DRIFT.SILVER.SALES_CLEANED
TARGET_LAG = DOWNSTREAM
WAREHOUSE = 'DEVOPS_WH'
AS
SELECT 
    SALE_ID,
    PRODUCT_NAME,
    QUANTITY,
    UNIT_PRICE,
    SALE_DATE
FROM DEMO_SCHEMA_DRIFT.BRONZE.SALES
WHERE SALE_ID IS NOT NULL
  AND PRODUCT_NAME IS NOT NULL
  AND QUANTITY > 0
  AND UNIT_PRICE > 0;
