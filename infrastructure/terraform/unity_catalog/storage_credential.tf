data "terraform_remote_state" "databricks" {
  backend = "local"

  config = {
    path = "../databricks/terraform.tfstate"
  }
}

resource "databricks_storage_credential" "commercial_vehicle" {
  name = "commercial_vehicle_adls"

  azure_managed_identity {
    access_connector_id = data.terraform_remote_state.databricks.outputs.access_connector_id
  }
}