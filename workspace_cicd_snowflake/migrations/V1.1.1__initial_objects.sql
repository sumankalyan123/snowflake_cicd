-- Migration: V1.1.1__initial_objects.sql
-- Description: Create initial objects in BRONZE_DB.RAW schema
-- Created: $(date)

CREATE TABLE BRONZE_DB.RAW.HELLO_WORLD
(
   FIRST_NAME VARCHAR
  ,LAST_NAME VARCHAR
);