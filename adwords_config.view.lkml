# AdWords configuration for Marketing Analytics by Looker

datagroup: adwords_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `adwords.account_hourly_stats` ;;
  max_cache_age: "24 hours"
}

view: adwords_config {
  extension: required

  dimension: adwords_schema {
    hidden: yes
    sql:adwords;;
  }
}
