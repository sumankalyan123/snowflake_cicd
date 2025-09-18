-- Migration: V1.2.1__add_manage_column.sql
-- Description: Add MANAGE column to EMPLOYEE table
-- Created: $(date)

ALTER TABLE BRONZE_DB.RAW.EMPLOYEE
ADD COLUMN MANAGE VARCHAR(100);
