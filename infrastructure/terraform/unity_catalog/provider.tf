terraform {
  required_version = ">= 1.6.0"

  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.0"
    }
  }
}

provider "databricks" {
  host                        = data.terraform_remote_state.databricks.outputs.workspace_url
  azure_workspace_resource_id = data.terraform_remote_state.databricks.outputs.workspace_id
}

provider "databricks" {
  alias      = "account"
  host       = "https://accounts.azuredatabricks.net"
  account_id = var.databricks_account_id

  profile = "commercial-vehicle-account"
}