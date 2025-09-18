-- Migration: V1.4.0__create_utility_tables.sql
-- Description: Create baseline and log tables in UTILITY schema for schema drift monitoring
-- Created: $(date)

-- Create baseline table for schema drift monitoring
CREATE OR REPLACE TABLE DEMO_SCHEMA_DRIFT.UTILITY.BASELINE (  
    TABLE_NAME STRING,
    COLUMN_NAME STRING,
    DATA_TYPE STRING
);

-- Create log table for tracking schema changes
CREATE OR REPLACE TABLE DEMO_SCHEMA_DRIFT.UTILITY.LOG (
    CHANGE_DETECTED_AT TIMESTAMP,
    TABLE_NAME STRING,
    COLUMN_NAME STRING,
    DATA_TYPE STRING,
    CHANGE_TYPE STRING,
    PROPAGATED BOOLEAN DEFAULT FALSE
);
