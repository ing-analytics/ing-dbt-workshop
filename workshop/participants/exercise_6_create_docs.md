# Exercise 6 - Create dbt Docs

## Goal
Generate dbt docs and validate lineage and metadata.

TODO explain docs in markdown 

## Timebox
20 minutes

## Starting Point
- Previous exercises completed
- Sources, models, and tests exist

## Tasks
1. Add missing descriptions to one model and one source.
2. Generate docs:

```bash
dbt docs generate
```

3. Serve docs locally:

```bash
dbt docs serve
```

4. Validate in docs UI:
- Source-to-model lineage links
- Model descriptions
- Column descriptions

## Checkpoint
- Docs site opens and reflects your latest updates.

## Expected Artifacts
- Updated YAML descriptions
- Generated docs metadata in `target/`

## Stretch
Document all columns for one model in detail.
