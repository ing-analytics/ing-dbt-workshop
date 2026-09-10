# Exercise 3 - Create a dbt Model

## Goal
Create a new staging model with basic transformations.

## Timebox
10 minutes

## Starting Point
- Exercise 2 completed
- Source definitions are in place

## Tasks
1. Create `models/staging/stg_payments.sql`.
2. Read from a source table using `source()`.
3. Add at least two transformations:
- Rename one column
- Cast one column type
4. Build only your new model:

```bash
dbt run --select stg_payments
```

5. Inspect the generated table with DuckDB UI.

## Checkpoint
- Model compiles and runs successfully.
- Output has expected columns and types.

## Expected Artifacts
- `models/staging/stg_payments.sql`

## Stretch
Add one derived metric column (for example a boolean or ratio).
