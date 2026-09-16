# Exercise 4 - Create a dbt Macro

## Goal
Create and reuse a macro in model logic or tests.

dbt docs for jinja and macros can be found [here](https://docs.getdbt.com/docs/build/jinja-macros?version=1)

## Timebox
10 minutes

## Starting Point
- Existing staging or marts model available for edits

## Tasks
1. Create macro file in `macros/`.
2. Implement a reusable helper with one input argument. For instance, a macro that converts dollar to cents.
3. Use it in a model select expression or test definition. For example, add new columns that convert existing cents values to dollars.
4. Run impacted model and tests:

```bash
dbt run --select <model_using_macro>
dbt test --select <model_using_macro>
```

## Checkpoint
- Compilation succeeds.
- Macro output is visible in model results or test behavior.

## Expected Artifacts
- New macro file
- Updated model/test using the macro

## Stretch
Implement adapter-specific dispatch macro variants.
