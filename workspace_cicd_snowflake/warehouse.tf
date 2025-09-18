# Snowflake Warehouse Configuration
resource "snowflake_warehouse" "devops_wh" {
  name           = var.warehouse_name
  comment        = "DevOps warehouse for CI/CD operations"
  warehouse_size = var.warehouse_size
  
  # Auto-suspend after specified seconds of inactivity
  auto_suspend = var.auto_suspend_seconds
  
  # Auto-resume when queries are submitted
  auto_resume = true
  
  # Initially suspended
  initially_suspended = true
  
  # Resource monitor (optional)
  resource_monitor = null
  
  # Statement timeout in seconds (optional)
  statement_timeout_in_seconds = 0
  
  # Statement queued timeout in seconds (optional)
  statement_queued_timeout_in_seconds = 0
}

# Note: Warehouse grants can be managed separately using SQL or Snowflake UI
# The warehouse will be created and can be granted permissions manually
