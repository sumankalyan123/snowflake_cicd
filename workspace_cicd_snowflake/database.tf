# Snowflake Database Configuration
resource "snowflake_database" "bronze_db" {
  name    = "BRONZE_DB"
  comment = "Bronze layer database for raw data ingestion"
  
  # Optional: Set data retention time in days
  data_retention_time_in_days = 1
  
  # Optional: Set as transient database
  is_transient = false
}

# Optional: Create a schema within the database
resource "snowflake_schema" "bronze_schema" {
  database = snowflake_database.bronze_db.name
  name     = "RAW"
  comment  = "Schema for raw data tables"
}
