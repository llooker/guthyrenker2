connection: "guthy-renker"
include: "adwords_config.view"

datagroup: ama_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `adwords.account_hourly_stats` ;;
  max_cache_age: "24 hours"
}
include: "/app-marketing-common/*.view"
include: "/app-marketing-google-ads-adapter/*.view"
include: "/app-marketing-google-ads/*.view"

include: "/app-marketing-google-ads/*.dashboard"
include: "cross_channel_ad_impressions.view"
include: "/app-marketing-crosschannel/*.view"
include: "/app-marketing-crosschannel/*.dashboard"
