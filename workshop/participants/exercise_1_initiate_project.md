# Exercise 1 - Initiate a dbt Project

## Goal
Set up and validate a working dbt project locally.
`dbt` is a command line tool that enables analytics engineers to transform data in their warehouse more effectively. This exercise will help you get started with dbt by creating a new project, validating the setup, and running some initial commands.

## Timebox
20 minutes

## Starting Point
- Repository cloned
- Python virtual environment activated
- Current directory: project root

## Tasks

1. Initialize a new dbt project. We are going to setup the profile manually.

```bash
dbt init --skip-profile-setup
```
You can see that `jaffle_shop` is created with a `dbt_project.yml` file and the recommended directory structure. dbt will already initialize this for you so you have the starter examples.

`dbt init` comes with a number of options, for examples, instead of `jaffle_shop`, you can specify a different project name:

```bash
dbt init my_project_name
```

or you can start from a different sample project by specifying the `--sample` option: 

```bash
dbt init my_project_name --sample moms-flower-shop
```

2. Try `dbt debug`. Why does it fail?


3. Setup the `profiles.yml` file in the dbt project directory. This file contains the connection details for your DuckDB database. For more information, refer to the [DuckDB setup guide](https://docs.getdbt.com/docs/local/connect-data-platform/duckdb-setup?version=2).

Specify the schema you want to use for your models. For example, you can use `ing_workshop` as the schema name.

Default schema used would be `main`.

4. Validate that now dbt can read the project and profile:

```bash
dbt debug
```

5. Inspect the project structure and contents. Have a look at the profiles.yml file and the dbt_project.yml file. 


```bash
tree jaffle_shop
```

6. Try to run the models. Why does it fail?
7. In this starter project, the source data has been provided as CSV files. Load the source data as seeds (we will change this later to proper source setup)

```bash
dbt seed
```

7. Validate that now all starter models can build:

```bash
dbt run
```



## Stretch
Run tests and inspect failures (if any):

```bash
dbt test
```


Inspect the generated tables with DuckDB UI. 

`duckdb --ui ../jaffle_shop/dev.duckdb`

## Checkpoint
- `dbt debug` returns success.
- `dbt run` completes without errors.


> [!WARNING]  
> Detach the database connection or close the DuckDB UI (`Ctrl+D` or `exit`) because duckdb can only have one connection at a time. You will need to close the connection to run the next exercise.

