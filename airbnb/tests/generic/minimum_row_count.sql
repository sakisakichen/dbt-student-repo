{% test minimum_row_count(model, min_rows) %}
SELECT COUNT(*) as cnt FROM {{ model }} HAVING COUNT(*) < {{ min_rows }}
{% endtest %}