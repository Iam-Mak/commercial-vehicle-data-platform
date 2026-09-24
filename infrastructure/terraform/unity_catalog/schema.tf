resource "databricks_schema" "landing" {
  catalog_name = databricks_catalog.commercial_vehicle.name
  name         = "landing"
  comment      = "Landing layer for incoming commercial vehicle data."
}

resource "databricks_schema" "bronze" {
  catalog_name = databricks_catalog.commercial_vehicle.name
  name         = "bronze"
  comment      = "Bronze layer containing raw ingested data."
}

resource "databricks_schema" "silver" {
  catalog_name = databricks_catalog.commercial_vehicle.name
  name         = "silver"
  comment      = "Silver layer containing cleaned and conformed data."
}

resource "databricks_schema" "gold" {
  catalog_name = databricks_catalog.commercial_vehicle.name
  name         = "gold"
  comment      = "Gold layer containing curated business-ready data."
}