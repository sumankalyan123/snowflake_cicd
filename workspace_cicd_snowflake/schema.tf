# Snowflake Schema Configuration

# BRONZE_DB Schemas
resource "snowflake_schema" "bronze_raw_schema" {
  database = snowflake_database.bronze_db.name
  name     = "RAW"
  comment  = "Schema for raw data tables"
}

# DEMO_SCHEMA_DRIFT Schemas
resource "snowflake_schema" "demo_bronze_schema" {
  database = snowflake_database.demo_schema_drift_db.name
  name     = "BRONZE"
  comment  = "Bronze layer for raw data ingestion"
}

resource "snowflake_schema" "demo_silver_schema" {
  database = snowflake_database.demo_schema_drift_db.name
  name     = "SILVER"
  comment  = "Silver layer for cleaned and transformed data"
}

resource "snowflake_schema" "demo_gold_schema" {
  database = snowflake_database.demo_schema_drift_db.name
  name     = "GOLD"
  comment  = "Gold layer for business-ready aggregated data"
}

resource "snowflake_schema" "demo_utility_schema" {
  database = snowflake_database.demo_schema_drift_db.name
  name     = "UTILITY"
  comment  = "Utility schema for schema drift monitoring and logging"
}
