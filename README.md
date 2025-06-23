# dbt_bigquery
End-to-end dbt data pipeline project using BigQuery to model and analyze sales data. Includes raw ingestion, staging, transformation layers, and documentation.

# Sales Analytics with dbt & BigQuery

This project demonstrates a full-stack modern data pipeline using **dbt (Data Build Tool)** and **Google BigQuery** to transform and analyze sales data.

---

## 🚀 Project Overview

This repository contains a sales analytics pipeline built using **dbt** on **BigQuery**, following a modular approach:

- **Raw Layer**: Ingests randomly generated sales data
- **Staging Layer**: Cleans, formats, and prepares raw data
- **Mart Layer**: Aggregates metrics such as revenue and order count
- **Macros**: Reusable logic for dynamic partitioning
- **Tests & Documentation**: Data quality checks and auto-generated docs with `dbt docs`

---

## 📊 Tech Stack

- [dbt](https://www.getdbt.com/)
- [Google BigQuery](https://cloud.google.com/bigquery)
- [Google Cloud SDK](https://cloud.google.com/sdk)
- SQL (BigQuery Standard SQL)
- Jinja2 (for macros)

---

## 📁 Project Structure

sales_analytics/
├── models/
│   ├── staging/                 # Cleans and prepares raw data
│   │   └── stage_sales.sql      # Transforms raw sales into a clean format
│   ├── example/
│   │   └── Mart/
│   │       └── sales_final.sql  # Aggregates metrics like revenue, orders
│
├── macros/                      # Custom reusable Jinja macros
│   └── dynamic_partition.sql    # Macro for recent/historical partitioning
│
├── tests/                       # dbt schema tests
│   └── schema.yml               # Column-level tests for sales_final model
│
├── dbt_project.yml              # Main dbt project config
├── profiles.yml (local)         # User-specific connection settings (not committed)
├── README.md                    # Project documentation
└── target/                      # Compiled SQL and docs (auto-generated)
