# Exercise 5 - Create dbt Tests and Source Freshness

## Goal
Implement and run four dbt test types.

## Timebox
30 minutes

## Starting Point
- Models are building successfully

## Data Tests
1. Standard data test:
- Add `not_null` and `unique` to a model YAML column. You can see for the example models how this was done.

2. Singular data test:
- Create SQL test in `tests/` that returns invalid rows only.

3. Generic data test:
- Create reusable generic test macro in `macros/`.
- Attach it in model YAML.


## Source Freshness

1. Add `loaded_at_field` for tables with timestamps in `models/staging/__sources.yml`.
2. Configure freshness thresholds (warning and error).
3. Run freshness:

```bash
dbt source freshness
```
1. Inspect the results in the terminal to see if any sources are stale.

## Expected Artifacts
- `models/staging/__sources.yml`

## Stretch
Play with the freshness configuration to see how it affects the results. For example, change the warning threshold to 1 day and the error threshold to 10000 days. Then run `dbt source freshness` again and observe the results.


## Unit Tests

1. Unit test:
- Add `unit_tests:` block to a model YAML with `given` and `expect`.

1. Run tests incrementally:

```bash
dbt test --select <model_name>
dbt test --select path:tests
dbt test --select test_type:unit
dbt test
```

## Checkpoint
- At least one passing test exists for each test type.

## Expected Artifacts
- Updated model YAML
- New singular SQL test
- New generic test macro
- New unit test block

## Stretch
Intentionally fail one test, then fix the underlying model logic.


