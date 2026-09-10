# ing-dbt-workshop
Practical excercises for the tech academy dbt workshop run by ING Analytics

In this workshop we will be using the [jaffle_shop](https://github.com/dbt-labs/jaffle_shop) dataset to demonstrate dbt functionality. The jaffle_shop dataset is a small, fictional dataset that simulates an online store. It includes tables for customers, orders, payments, and products.
To enable local development and testing, we will be using [DuckDB](https://duckdb.org/) as our database. DuckDB is an in-process SQL OLAP database management system that is designed to support analytical query workloads. It is lightweight, fast, and easy to set up, making it a great choice for local development and testing.



## Prerequisites

- Python 3.10 or higher installed
- `uv` installed (`pip install uv`)

## Setup

The repository already contains a `pyproject.toml` file that specifies the required dependencies for the workshop. To set up the project, run the following commands:

```bash
git clone https://github.com/ing-analytics/ing-dbt-workshop.git
cd ing-dbt-workshop
uv sync
source .venv/bin/activate
```

Verify that the environment is set up correctly:

```bash
dbt --version
```     
Check that duckdb is installed and available:

```bash
duckdb --version
```

Check that you can run the duckdb UI:

```bash
duckdb --ui
```


> [!INFO]  
> Because `dbt 2.0` is still in beta and works differently, we chose to run this workshop with `dbt 1.x`.