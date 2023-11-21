# The name of this view in Looker is "Prediction Retail 100223"
view: prediction_retail_100223 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.prediction_retail_100223` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "A" in Explore.

  dimension: a {
    type: number
    sql: ${TABLE}.A ;;
  }

  dimension: b {
    type: number
    sql: ${TABLE}.B ;;
  }

  dimension: c {
    type: number
    sql: ${TABLE}.C ;;
  }

  dimension: cpi {
    type: number
    sql: ${TABLE}.CPI ;;
  }

  dimension: dept {
    type: number
    sql: ${TABLE}.Dept ;;
  }

  dimension: fuel_price {
    type: number
    sql: ${TABLE}.Fuel_Price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fuel_price {
    type: sum
    sql: ${fuel_price} ;;  }
  measure: average_fuel_price {
    type: average
    sql: ${fuel_price} ;;  }

  dimension: is_holiday {
    type: number
    sql: ${TABLE}.IsHoliday ;;
  }

  dimension: mark_down1 {
    type: number
    sql: ${TABLE}.MarkDown1 ;;
  }

  dimension: mark_down2 {
    type: number
    sql: ${TABLE}.MarkDown2 ;;
  }

  dimension: mark_down3 {
    type: number
    sql: ${TABLE}.MarkDown3 ;;
  }

  dimension: mark_down4 {
    type: number
    sql: ${TABLE}.MarkDown4 ;;
  }

  dimension: mark_down5 {
    type: number
    sql: ${TABLE}.MarkDown5 ;;
  }

  dimension: predicted {
    type: number
    sql: ${TABLE}.Predicted ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.Size ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.Store ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.Temperature ;;
  }

  dimension: unemployment {
    type: number
    sql: ${TABLE}.Unemployment ;;
  }

  dimension: weekly_sales {
    type: number
    sql: ${TABLE}.Weekly_Sales ;;
  }
  measure: count {
    type: count
  }
}
