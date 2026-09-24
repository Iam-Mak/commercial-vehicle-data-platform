# Commercial Vehicle Data Platform

A production-oriented data platform built using real commercial-vehicle data, starting with the **DT-CARGO dataset**.

The project combines cloud infrastructure, data storage, Databricks, Spark, Terraform, and Unity Catalog to build a governed environment for processing commercial-vehicle data.

## Current Architecture

```text
Azure
│
├── Resource Group
│
├── ADLS Gen2
│   ├── landing
│   ├── bronze
│   ├── silver
│   ├── gold
│   └── managed
│
└── Azure Databricks
    │
    ├── Access Connector
    └── Unity Catalog
        ├── Storage Credential
        ├── External Locations
        ├── Catalog
        ├── Schemas
        └── Access Groups
```

## Infrastructure

The Azure and Databricks infrastructure is managed with **Terraform** and version-controlled with Git.

Terraform is separated into:

```text
infrastructure/terraform/
├── foundation/
├── databricks/
└── unity_catalog/
```

The Foundation layer contains the persistent Azure storage infrastructure, while Databricks and Unity Catalog are managed as separate layers.

## Current Status

The cloud foundation, Databricks workspace, Azure storage access, and Unity Catalog structure are provisioned and managed through Terraform.
