output "access_connector_id" {
  description = "Resource ID of the Databricks Access Connector."
  value       = azurerm_databricks_access_connector.commercial_vehicle.id
}

output "workspace_url" {
  value = azurerm_databricks_workspace.commercial_vehicle.workspace_url
}

output "workspace_id" {
  value = azurerm_databricks_workspace.commercial_vehicle.id
}