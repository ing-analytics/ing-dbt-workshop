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

1. Initialize a new dbt project. You will be prompted to provide a project name and other configuration details.

```bash
dbt init --profiles-dir .
```

The `--profiles-dir .` option tells dbt to look for the `profiles.yml` file in the current directory rather than the default location which would be your home drive. This way we can include it in the repository and ensure consistent setup across different environments.


You can see that a dbt project is created with a `dbt_project.yml` file and the recommended directory structure. dbt will already initialize this for you so you have the starter examples.

`dbt init` comes with a number of options, for examples, instead of `jaffle_shop`, you can specify a different project name:




1. Inspect the `profiles.yml` file in the dbt project directory. This file contains the connection details for your DuckDB database. For more information, refer to the [DuckDB setup guide](https://docs.getdbt.com/docs/local/connect-data-platform/duckdb-setup?version=2).

Specify the schema you want to use for your models. For example, you can use `ing_workshop` as the schema name.

Default schema used would be `main`.

2. Validate that now dbt can read the project and profile:

```bash
dbt debug
```

3. Inspect the project structure and contents. Have a look at the profiles.yml file and the dbt_project.yml file. 


```bash
tree {project_name}
```

4. Validate that all starter models can be ran.

```bash
dbt run
```



## Stretch
Run tests and inspect failures (if any):

```bash
dbt test
```


Inspect the generated tables with DuckDB UI. 

`duckdb --ui ../{project_name}/dev.duckdb`

## Checkpoint
- `dbt debug` returns success.
- `dbt run` completes without errors.


> [!WARNING]  
> Detach the database connection or close the DuckDB UI (`Ctrl+D` or `exit`) because duckdb can only have one connection at a time. You will need to close the connection to run the next exercise.

