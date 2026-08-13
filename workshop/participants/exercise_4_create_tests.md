# Exercise 4 - Create dbt Tests

## Goal
Implement and run four dbt test types.

## Timebox
30 minutes

## Starting Point
- Models are building successfully

## Tasks
1. Standard data test:
- Add `not_null` and `unique` to a model YAML column.

2. Singular data test:
- Create SQL test in `tests/` that returns invalid rows only.

3. Generic data test:
- Create reusable generic test macro in `macros/`.
- Attach it in model YAML.

4. Unit test:
- Add `unit_tests:` block to a model YAML with `given` and `expect`.

5. Run tests incrementally:

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
