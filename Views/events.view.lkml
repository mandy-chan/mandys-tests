view: events {
  sql_table_name: demo_db.events ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  parameter: product_metric {
    type: unquoted
    default_value: "ordered"

    allowed_value: {
      label: "Ordered"
      value: "ordered"
    }

    allowed_value: {
      label: "Returned"
      value: "returned"
    }

  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: value_editted {
    type: string
    sql: concat(${TABLE}.value, "edit");;
  }

  measure: count {
    type: count
    drill_fields: [id, users.first_name, users.id, users.last_name]
  }
}
