variable "catalog_name" {
  description = "Name of the Unity Catalog catalog for the commercial vehicle data platform."
  type        = string

  validation {
    condition     = length(trimspace(var.catalog_name)) > 0
    error_message = "Catalog name must not be empty."
  }
}

variable "catalog_comment" {
  description = "Description of the Unity Catalog catalog."
  type        = string

  validation {
    condition     = length(trimspace(var.catalog_comment)) > 0
    error_message = "Catalog comment must not be empty."
  }
}

variable "databricks_account_id" {
  description = "Databricks account ID."
  type        = string
}