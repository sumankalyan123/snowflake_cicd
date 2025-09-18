# Snowflake Database Configuration

# BRONZE_DB - Bronze layer database for raw data ingestion
resource "snowflake_database" "bronze_db" {
  name    = "BRONZE_DB"
  comment = "Bronze layer database for raw data ingestion"
  
  # Optional: Set data retention time in days
  data_retention_time_in_days = 1
  
  # Optional: Set as transient database
  is_transient = false
}

# DEMO_SCHEMA_DRIFT - Demo database for schema drift management
resource "snowflake_database" "demo_schema_drift_db" {
  name    = "DEMO_SCHEMA_DRIFT"
  comment = "Demo database for schema drift management with Bronze, Silver, Gold architecture"

  # Optional: Set data retention time in days
  data_retention_time_in_days = 1

  # Optional: Set as transient database
  is_transient = false
}
