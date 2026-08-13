# Exercise 2 - Define Sources and Freshness

## Goal
Define raw sources in YAML and configure source freshness checks.

## Timebox
10 minutes

## Starting Point
- Exercise 1 completed
- You are inside your dbt project directory

## Setup

We are going to use the [jaffle-shop-generator](https://github.com/dbt-labs/jaffle-shop-generator) package to generate jaffle-shop data and the [ability of duckdb to directly read from csv](https://duckdb.org/docs/data/csv).

Use the following command from the root of the repository to generate the data in the `jaffle-data` directory:

```bash
jafgen generate
```

## Tasks
1. Create a new file at `models/staging/sources.yml` in which we will define the sources.
2. We will now use the following source definition, using the ability for duckdb to [directly read from csv](https://github.com/duckdb/dbt-duckdb#reading-from-external-files) as a starting point. 

Add it to your `sources.yml` file:
```
sources:
  - name: ecom
    description: "E-commerce raw data source."
    meta:
      external_location: "jaffle-data/{name}.csv"
```

1. Now include these tables:
- `raw_customers`
- `raw_orders`
- `raw_items`
- `raw_stores`
- `raw_products`
- `raw_supplies`
3. Add `loaded_at_field` for tables with timestamps.
4. Configure freshness thresholds (warning and error).
5. Run freshness:

```bash
dbt source freshness
```
6. Inspect the results and check the generated dbt documentation:

```bash
dbt docs generate
dbt docs serve

## Checkpoint
- Freshness command finishes.
- Source nodes appear in documentation lineage.

## Expected Artifacts
- `models/staging/sources.yml`
- Generated dbt documentation

## Stretch
Play with the freshness configuration to see how it affects the results. For example, change the warning threshold to 1 day and the error threshold to 10000 days. Then run `dbt source freshness` again and observe the results.
