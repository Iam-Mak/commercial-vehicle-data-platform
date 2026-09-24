resource "databricks_grants" "managed_location" {
  external_location = databricks_external_location.managed.id

  grant {
    principal  = "mohd.amilk09@gmail.com"
    privileges = ["CREATE MANAGED STORAGE"]
  }
}

resource "databricks_grants" "catalog" {
  catalog = databricks_catalog.commercial_vehicle.name

  grant {
    principal  = databricks_group.data_engineers.display_name
    privileges = ["USE_CATALOG"]
  }

  grant {
    principal  = databricks_group.data_analysts.display_name
    privileges = ["USE_CATALOG"]
  }
}