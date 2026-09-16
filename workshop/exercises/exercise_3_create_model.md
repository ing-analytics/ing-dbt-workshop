# Exercise 3 - Create a dbt Model

## Goal
Create a new staging model with basic transformations.
dbt docs for SQL models can be found [here](https://docs.getdbt.com/docs/build/sql-models?version=1)

## Timebox
10 minutes

## Starting Point
- Exercise 2 completed
- Source definitions are in place

## Tasks
1. Create `models/staging/stg_orders.sql`. 
2. Read from a source table using `source()`.
3. Transform at least two columns by for instance:
- Renaming columns
- Casting column types
4. Build only your new model:

```bash
dbt run --select stg_orders
```

5. Inspect the generated table with DuckDB UI.

## Checkpoint
- Model compiles and runs successfully.
- Output has expected columns and types.
- You can see the lineage of the source and model in the dbt documentation. 
  ```bash
  dbt docs generate
  dbt docs serve
  ```

## Expected Artifacts
- `models/staging/stg_orders.sql`

## Stretch
Add one derived metric column (for example a boolean or ratio).
