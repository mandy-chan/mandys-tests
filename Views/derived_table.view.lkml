view: derived_table {
  derived_table: {
    sql:
    SELECT
        id ,
        max(id) as max_id
    FROM demo_db.order_items
    WHERE {% condition testing %} id {% endcondition %}
    ;;

  }

  filter: testing {}

  dimension: id {}

  dimension: max_id {}

 }
