-- Migration: V1.1.2__add_email_column.sql
-- Description: Add EMAIL column to HELLO_WORLD table
-- Created: $(date)

ALTER TABLE BRONZE_DB.RAW.HELLO_WORLD 
ADD COLUMN EMAIL VARCHAR(255);
