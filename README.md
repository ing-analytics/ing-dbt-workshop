# ing-dbt-workshop
Practical excercises for the tech academy dbt workshop run by ING Analytics

In this workshop we will be using the [jaffle_shop](https://github.com/dbt-labs/jaffle_shop) dataset to demonstrate dbt functionality. The jaffle_shop dataset is a small, fictional dataset that simulates an online store. It includes tables for customers, orders, payments, and products.
To enable local development and testing, we will be using [DuckDB](https://duckdb.org/) as our database. DuckDB is an in-process SQL OLAP database management system that is designed to support analytical query workloads. It is lightweight, fast, and easy to set up, making it a great choice for local development and testing.

dbt documentation can be found [here](https://docs.getdbt.com/).

## Prerequisites

- Python 3.10 or higher installed
- `uv` installed (`pip install uv`) for managing the Python virtual environment.        
- Preferably a code editor like VSCode or PyCharm in which you can run the exercises and interact with the project files easily.


### Alternative if you do not have Python 3.10 or higher installed on your local machine
We prefer you to run the exercises locally as that provides a more realistic development experience. If that is not possible, you can use GitHub Codespaces. GitHub Codespaces provides a cloud-based development environment with the necessary dependencies pre-installed, allowing you to follow along with the workshop without worrying about local setup.

Note that the duckdb ui will not work with github codespaces, but [duckdb cli](https://cli.wiki/Databases/DuckDB-CLI-Guide---Command-Line-Interface-for-DuckDB) can be used instead to inspect the tables.

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

In case you prefer the command line interface over the UI, you can use the DuckDB CLI to interact with your database. For example, you can start the CLI by running: 

```bash
duckdb
```


> [!INFO]  
> Because `dbt 2.0` is still in beta and works differently, we chose to run this workshop with `dbt 1.x`.