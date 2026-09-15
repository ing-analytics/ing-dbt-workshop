{% test column_a_smaller_than_column_b(model, column_a, column_b) %}
select *
from {{ model }}
where {{ column_a }} >= {{ column_b }}
{% endtest %}