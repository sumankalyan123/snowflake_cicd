-- Migration: V1.3.6__fix_gold_dynamic_table_columns.sql
-- Description: Fix GOLD dynamic table to maintain same columns as SILVER
-- Created: $(date)

-- Recreate GOLD dynamic table with same columns as SILVER
CREATE OR REPLACE DYNAMIC TABLE DEMO_SCHEMA_DRIFT.GOLD.SALES_AGGREGATED
TARGET_LAG = '5 minutes'
WAREHOUSE = 'DEVOPS_WH'
AS
SELECT 
    SALE_ID,
    PRODUCT_NAME,
    QUANTITY,
    UNIT_PRICE,
    SALE_DATE
FROM DEMO_SCHEMA_DRIFT.SILVER.SALES_CLEANED;
