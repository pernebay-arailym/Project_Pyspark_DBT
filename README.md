# 🛍️ Sales Data Pipeline with PySpark + dbt + DuckDB

## 📌 Project Overview
This project demonstrates the **end-to-end workflow of a modern data pipeline**:
- **Raw CSV data** (sales transactions) is cleaned and transformed using **PySpark**.
- Cleaned data is stored in a **DuckDB database**.
- A **star schema** is designed and materialized with **dbt**.
- **Analytical queries** are written in dbt to answer real business questions.

The goal is to simulate a real-world **Data Engineering pipeline** from ingestion to analytics.

---

## 🗂️ Project Structure

```
Project_Pyspark_DBT/
├── data/                   # Raw and cleaned CSV files
│   ├── ventes.csv          # Original raw data
│   └── ventes_clean.csv    # Cleaned export from PySpark
├── duckdb/
│   └── ventes_clean.duckdb # DuckDB database with star schema
├── notebooks/
│   └── cleaning_pyspark.ipynb  # Interactive PySpark cleaning process
├── models/                 # dbt models
│   ├── staging/            # Staging layer (stg_ventes.sql)
│   ├── dimensions/         # Dimension tables
│   ├── facts/              # Fact table (fact_ventes.sql)
│   └── queries/            # Analytical queries (business questions)
├── myenv/                  # Python virtual environment
├── dbt_project.yml         # dbt project configuration
├── README.md               # ← You are here
└── .gitignore
```
---
### ⚙️ Technologies Used
- Python 3.13
- PySpark → Data cleaning & preprocessing
- DuckDB → Lightweight OLAP database
- dbt (Data Build Tool) → Data transformations, star schema, analytics
- VS Code + Jupyter Notebook → Development environment
---
### 🔄 Workflow
#### 1. Data Cleaning with PySpark
- Loaded raw ventes.csv.
- Applied data quality rules:
- Removed rows with missing values (except montant_total).
- Corrected purchase dates with multiple formats.
- Converted string columns to numeric types (age, quantity, price).
- Fixed anomalies (negative ages → positive).
- Recalculated montant_total = quantite × prix_unitaire.

#### ➡️ Exported as data/ventes_clean.csv.
---
### 2. Star Schema with dbt

Staging model: stg_ventes.sql

Dimensions:

- dim_client.sql → customer info
- dim_produit.sql → product info
- dim_magasin.sql → store info
- dim_temps.sql → time dimension

Fact table: fact_ventes.sql

#### ➡️ Built with:
```
dbt run
```
---
### 3. Business Questions (Analytical Queries)

Inside models/queries/, queries answer key business questions.

#### 📊 Temporal Analysis

-- Monthly revenue of the store
-- Top 3 most profitable months
-- Evolution of the average basket size

#### 📦 Product Analysis

-- Best-selling products by quantity
-- Top products by revenue
-- Most popular product categories

#### 👥 Client Analysis

-- Sales distribution by age group (10-year ranges)
-- Cities generating the highest sales

#### ➡️ Built with:
```
dbt run --select queries
```
---
### 📈 Example Results

- *Monthly revenue* shows seasonal trends.
- *Top 3 months* highlight peak sales periods.
- *Average basket* size grows steadily over time.
- *Top products and categories* drive the majority of revenue.
- *Client demographics* reveal most active age groups and best-performing regions.
---
### 🎯 Key Learnings

- Hands-on practice with **PySpark data cleaning**.
- Implementing a **star schema** for analytics.
- Using dbt with **DuckDB for modular**, version-controlled SQL transformations.
- Writing **business-focused queries** on top of clean, modeled data.
---
### 📝 Author

👩‍💻 🔗 [Arailym Pernebay](https://www.linkedin.com/in/arailym-pernebay/)
