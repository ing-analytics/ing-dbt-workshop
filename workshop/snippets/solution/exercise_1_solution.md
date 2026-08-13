# Exercise 1 Solution Snippets

## Expected successful command flow
```bash
cd ing_workshop
dbt debug
dbt seed
dbt run
dbt test
```

## Verification query in DuckDB UI
```sql
select table_schema, table_name
from information_schema.tables
order by table_schema, table_name;
```
