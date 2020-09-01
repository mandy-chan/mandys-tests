view: order_items {
  sql_table_name: demo_db.order_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  parameter: current_or_previous_parameter {
    type: unquoted
    allowed_value: {
      label: "current"
      value: "current"
    }
    allowed_value: {
      label: "previous"
      value: "previous"
    }
  }

  filter: current_or_previous {
    type: string
    sql: {% if current_or_previous_parameter._parameter_value == 'current' %}
            ${returned_date}
         {% else %}
          ${returned_last_month}
        {% endif %} ;;
  }

  dimension: date {
    sql:
   {% if current_or_previous_parameter._parameter_value == 'current' %}
        CAST(${returned_date} as char)
         {% else %}
       CAST(${returned_last_month} as char)
    {% endif %} ;;
  }

  dimension: returned_last_month {
    type: date
    sql:  DATE_SUB(${returned_date}, INTERVAL 1 MONTH);;
  }


  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
    type: time
    timeframes: [

    ]
    sql: ${TABLE}.returned_at;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;

  }

  measure: max {
    type: max
    sql: ${inventory_item_id} ;;
  }

  # measure: count {
  #   type: count
  #   html: @{begin_link}<a href="@{dashboard_path}/13">{{ rendered_value }}</a>@{end_link} ;;
  #   }

  measure: count {
    type: count
    html: <a href="/dashboards-next/4208">{{ rendered_value }}</a>;;
  }

  measure: count_not_reselected {
    type: count
    filters: [order_id: "NULL OR !=0" ]
  }
}
