resource "databricks_catalog" "commercial_vehicle" {
  name    = var.catalog_name
  comment = var.catalog_comment

  storage_root = "abfss://${data.terraform_remote_state.foundation.outputs.managed_filesystem_name}@${replace(data.terraform_remote_state.foundation.outputs.storage_dfs_endpoint, "https://", "")}/"


  depends_on = [
    databricks_external_location.managed
  ]
  
}

