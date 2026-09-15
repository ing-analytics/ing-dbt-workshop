# Exercise 5 - Create dbt Tests and Source Freshness

## Goal
Implement and run four dbt test types.

## Timebox
30 minutes

## Starting Point
- Models are building successfully

## Data Tests
1. Standard data test:
- Create a YAML file for the model if it doesn't already exist. For instance the `stg_orders` model.
- Add `not_null` and `unique` to a model column. You can see for the example models how this was done.
- Run the tests for the model where you added it to ensure they pass:

```bash
dbt test --select <model_name>
```

2. Singular data test:
- Create SQL test in `tests/` that returns invalid rows only. For instance check that the subtotal is smaller than the total.
- Run the tests for the singular test to ensure it behaves as expected:

```bash
dbt test --select <singular_test_name>
```


## Source Freshness

1. Add `loaded_at_field` for tables with timestamps in `models/staging/__sources.yml`.
2. Configure freshness thresholds (warning and error).
3. Run freshness:

```bash
dbt source freshness
```
4. Inspect the results in the terminal to see if any sources are stale.

## Expected Artifacts
- `models/staging/__sources.yml`




## Unit Tests

1. Create a new model under marts that aggregates customer orders
2. Unit test:
- Add `unit_tests:` for this model with `given` and `expect`.

3. Run unit tests:

```bash
dbt test --select test_type:unit
```

## Checkpoint
- At least one passing test exists for each test type.



## Expected Artifacts
- Updated model YAML
- New singular SQL test
- New generic test macro
- New unit test block



## Stretch
- Play with the freshness configuration to see how it affects the results. For example, change the warning threshold to 1 day and the error threshold to 10000 days. Then run `dbt source freshness` again and observe the results. You can also change some dates in the source data csv.
- Convert your singular tests into generic tests using macros. For instance, the test that checks if the subtotal is smaller than the total can be turned into a reusable macro that checks whether one column is smaller than the other.
- Intentionally fail one of the unit tests, then fix the underlying model logic.