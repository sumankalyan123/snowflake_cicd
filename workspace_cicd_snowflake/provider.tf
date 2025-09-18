# Snowflake Provider Configuration
terraform {
  cloud {
    organization = "Suman_sandbox"
    workspaces {
      name = "cicd_snowflake"
    }
  }
  
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.100"
    }
  }
}

# Configure the Snowflake Provider
provider "snowflake" {
  account_name      = var.SNOWFLAKE_ACCOUNT
  organization_name = var.SNOWFLAKE_ORGANIZATION
  user              = var.SNOWFLAKE_USER
  password          = var.SNOWFLAKE_PASSWORD
  role              = var.SNOWFLAKE_ROLE
}
