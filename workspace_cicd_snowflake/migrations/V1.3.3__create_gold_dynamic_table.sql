-- Migration: V1.3.3__create_gold_dynamic_table.sql
-- Description: Create deduplicated dynamic table in GOLD schema
-- Created: $(date)

-- Create deduplicated dynamic table in GOLD schema
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
