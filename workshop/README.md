# Workshop Assets

This folder contains facilitator and participant assets for the half-day Intro to dbt workshop.

## Structure
- `participants/`: participant handouts per exercise
- `snippets`: starter snippets per exercise
- `trainer_checklist.md`: facilitator runbook with exact command order

## DuckDB UI (native)
Use the `duckdb --ui` directly to inspect generated tables.

From repository root:

```bash
source .venv/bin/activate
uv sync
cd jaffle_shop
duckdb ---ui ../solution/ing_workshop/dev.duckdb
```

Fallback invocation:

```bash
python -m duckdb_ui ../solution/ing_workshop/dev.duckdb
```

## Suggested order
1. Use `trainer_checklist.md` to run the session.
2. Share participant files from `participants/`.
3. Release starter snippets when each exercise begins.
4. Use solution snippets only for debrief/recovery.
