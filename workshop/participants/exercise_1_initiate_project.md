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
1. Setup an exercise project:

```bash
dbt init ing_workshop --profiles-dir .
```
You can see that `ing_workshop` is created with a `dbt_project.yml` file and the recommended directory structure

Move the `profiles.yml` file from the root directory to the dbt project directory. This file contains the connection details for your DuckDB database.

Specify the schema you want to use for your models. For example, you can use `ing_workshop` as the schema name.

Default schema used would be `main`.


1. Validate dbt can read the project and profile:

```bash
dbt debug
```

3. Inspect the project structure and contents. Have a look at the profiles.yml file and the dbt_project.yml file. 


```bash
tree ing_workshop
```

1. Build all starter models:

```bash
dbt run
```



## Stretch
Run tests and inspect failures (if any):

```bash
dbt test
```


Inspect the generated tables with DuckDB UI. 

`duckdb --ui ../solution/ing_workshop/dev.duckdb`

## Checkpoint
- `dbt debug` returns success.
- `dbt run` completes without errors.

Detach the database connection or close the DuckDB UI (`Ctrl+D` or `exit`) because duckdb can only have one connection at a time. You will need to close the connection to run the next exercise.

