# Exercise 5 - Create a dbt Macro

## Goal
Create and reuse a macro in model logic or tests.

## Timebox
25 minutes

## Starting Point
- Existing staging or marts model available for edits

## Tasks
1. Create macro file in `macros/`.
2. Implement a reusable helper with one input argument.
3. Use it in a model select expression or test definition.
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
