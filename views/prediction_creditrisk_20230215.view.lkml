# The name of this view in Looker is "Prediction Creditrisk 20230215"
view: prediction_creditrisk_20230215 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.prediction_creditrisk_2023-02-15` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Fea 1" in Explore.

  dimension: fea_1 {
    type: number
    sql: ${TABLE}.fea_1 ;;
  }

  dimension: fea_10 {
    type: number
    sql: ${TABLE}.fea_10 ;;
  }

  dimension: fea_11 {
    type: number
    sql: ${TABLE}.fea_11 ;;
  }

  dimension: fea_2 {
    type: number
    sql: ${TABLE}.fea_2 ;;
  }

  dimension: fea_3 {
    type: number
    sql: ${TABLE}.fea_3 ;;
  }

  dimension: fea_4 {
    type: number
    sql: ${TABLE}.fea_4 ;;
  }

  dimension: fea_5 {
    type: number
    sql: ${TABLE}.fea_5 ;;
  }

  dimension: fea_6 {
    type: number
    sql: ${TABLE}.fea_6 ;;
  }

  dimension: fea_7 {
    type: number
    sql: ${TABLE}.fea_7 ;;
  }

  dimension: fea_8 {
    type: number
    sql: ${TABLE}.fea_8 ;;
  }

  dimension: fea_9 {
    type: number
    sql: ${TABLE}.fea_9 ;;
  }

  dimension: label {
    type: number
    sql: ${TABLE}.Label ;;
  }

  dimension: new_balance {
    type: number
    sql: ${TABLE}.new_balance ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_new_balance {
    type: sum
    sql: ${new_balance} ;;  }
  measure: average_new_balance {
    type: average
    sql: ${new_balance} ;;  }

  dimension: ovd_t1 {
    type: number
    sql: ${TABLE}.OVD_t1 ;;
  }

  dimension: ovd_t2 {
    type: number
    sql: ${TABLE}.OVD_t2 ;;
  }

  dimension: ovd_t3 {
    type: number
    sql: ${TABLE}.OVD_t3 ;;
  }

  dimension: pay_normal {
    type: number
    sql: ${TABLE}.pay_normal ;;
  }

  dimension: predicted {
    type: number
    sql: ${TABLE}.Predicted ;;
  }

  dimension: prod_code {
    type: number
    sql: ${TABLE}.prod_code ;;
  }
  measure: count {
    type: count
  }
}
