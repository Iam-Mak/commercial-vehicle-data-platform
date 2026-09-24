data "terraform_remote_state" "foundation" {
  backend = "local"

  config = {
    path = "../foundation/terraform.tfstate"
  }
}

resource "databricks_external_location" "managed" {
  name = "commercial_vehicle_managed"

  url = "abfss://${data.terraform_remote_state.foundation.outputs.managed_filesystem_name}@${replace(data.terraform_remote_state.foundation.outputs.storage_dfs_endpoint, "https://", "")}"

  credential_name = databricks_storage_credential.commercial_vehicle.name
}

resource "databricks_external_location" "landing" {
  name = "commercial_vehicle_landing"

  url = "abfss://${data.terraform_remote_state.foundation.outputs.landing_filesystem_name}@${replace(data.terraform_remote_state.foundation.outputs.storage_dfs_endpoint, "https://", "")}"

  credential_name = databricks_storage_credential.commercial_vehicle.name
}

resource "databricks_external_location" "bronze" {
  name = "commercial_vehicle_bronze"

  url = "abfss://${data.terraform_remote_state.foundation.outputs.bronze_filesystem_name}@${replace(data.terraform_remote_state.foundation.outputs.storage_dfs_endpoint, "https://", "")}"

  credential_name = databricks_storage_credential.commercial_vehicle.name
}

resource "databricks_external_location" "silver" {
  name = "commercial_vehicle_silver"

  url = "abfss://${data.terraform_remote_state.foundation.outputs.silver_filesystem_name}@${replace(data.terraform_remote_state.foundation.outputs.storage_dfs_endpoint, "https://", "")}"

  credential_name = databricks_storage_credential.commercial_vehicle.name
}

resource "databricks_external_location" "gold" {
  name = "commercial_vehicle_gold"

  url = "abfss://${data.terraform_remote_state.foundation.outputs.gold_filesystem_name}@${replace(data.terraform_remote_state.foundation.outputs.storage_dfs_endpoint, "https://", "")}"

  credential_name = databricks_storage_credential.commercial_vehicle.name
}