connection: "bigquery_publicdata_standard_sql"

include: "/views/*.lkml"

datagroup: mandy_testing_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mandy_testing_default_datagroup

explore: nested {}
