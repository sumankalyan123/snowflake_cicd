# Terraform Variables
variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "database_name" {
  description = "Name of the database to create"
  type        = string
  default     = "BRONZE_DB"
}

variable "data_retention_days" {
  description = "Data retention time in days for the database"
  type        = number
  default     = 1
}

# Warehouse Variables
variable "warehouse_name" {
  description = "Name of the warehouse to create"
  type        = string
  default     = "DEVOPS_WH"
}

variable "warehouse_size" {
  description = "Size of the warehouse (X-SMALL, SMALL, MEDIUM, LARGE, X-LARGE, XX-LARGE, XXX-LARGE, X4-LARGE, X5-LARGE, X6-LARGE)"
  type        = string
  default     = "X-SMALL"
}

variable "auto_suspend_seconds" {
  description = "Number of seconds of inactivity after which the warehouse is automatically suspended"
  type        = number
  default     = 60
}

# Snowflake Connection Variables
variable "SNOWFLAKE_ACCOUNT" {
  description = "Snowflake account name"
  type        = string
  sensitive   = false
}

variable "SNOWFLAKE_ORGANIZATION" {
  description = "Snowflake organization name"
  type        = string
  sensitive   = false
}


variable "SNOWFLAKE_USER" {
  description = "Snowflake username for authentication"
  type        = string
  sensitive   = false
}

variable "SNOWFLAKE_ROLE" {
  description = "Snowflake role for authentication"
  type        = string
  sensitive   = false
}

variable "SNOWFLAKE_PASSWORD" {
  description = "Snowflake password for authentication"
  type        = string
  sensitive   = true
}
