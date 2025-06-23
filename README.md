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


---

## ✅ Key Features

- 🔁 **Modular SQL modeling**: Raw → Staging → Mart layers
- 🧠 **Dynamic macros**: Partition rows into `recent` or `historical` buckets
- 🧪 **Data testing**: Not-null tests for key columns
- 📚 **Auto documentation**: Interactive lineage and metadata with `dbt docs`
- 🔐 **OAuth-secured connection** to BigQuery

---

## ⚙️ Setup Instructions

### Prerequisites

- Python 3.9+
- dbt CLI (`pip install dbt-bigquery`)
- Google Cloud SDK
- BigQuery access (with project & dataset ready)

### Steps

```bash
# Authenticate with GCP
gcloud auth application-default login

# Install dependencies
pip install dbt-bigquery

# Initialize dbt
dbt debug
dbt compile
dbt run

# Run tests
dbt test

# Generate docs
dbt docs generate
dbt docs serve


## 📈 Example Metrics
Final model sales_final includes:

Total revenue per country and product

Total orders

Partition label: recent vs. historical (based on order date)

## 📚 Resources
dbt Documentation

BigQuery SQL Reference

Jinja2 Template Language

## 🧑‍💻 Author
Abdelrhman Afify
Data Engineer passionate about modern data pipelines and analytics engineering.

LinkedIn | GitHub
