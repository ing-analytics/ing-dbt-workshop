# Exercise 2 - Define Sources and Freshness

## Goal
Define raw sources in YAML to be ready for modeling.

## Timebox
10 minutes

## Starting Point
- Exercise 1 completed
- You are inside your dbt project directory

## Setup

Typically, we would start our modelling from raw datasources, as opposed to the example models you saw in exercise 1.

### Data Source
We will define a single source named `ecom` that points to the raw e-commerce data stored in CSV files. Each table within this source will correspond to a different aspect of the e-commerce data, such as customers, orders, items, stores, products, and supplies.
We are going to use jaffle-shop data and the [ability of duckdb to directly read from csv](https://duckdb.org/docs/data/csv).


## Tasks
1. Create a new file at `models/staging/__sources.yml` in which we will define the sources.
2. We will now use the following source definition, using the ability for duckdb to [directly read from csv](https://github.com/duckdb/dbt-duckdb#reading-from-external-files) as a starting point. 

Add it to your `__sources.yml` file:
```
sources:
  - name: ecom
    description: "E-commerce raw data source."
    meta:
      external_location: "{path_to_repo}/ing-dbt-workshop/jaffle_data/{name}.csv"
```

1. Now include these tables:
- `raw_customers`
- `raw_orders`
- `raw_items`
- `raw_stores`
- `raw_products`
- `raw_supplies`
