# The name of this view in Looker is "Data Customer"
view: data_customer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.data_customer` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Fea 1" in Explore.

  dimension: fea_1 {
    type: number
    sql: ${TABLE}.fea_1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fea_1 {
    type: sum
    sql: ${fea_1} ;;  }
  measure: average_fea_1 {
    type: average
    sql: ${fea_1} ;;  }

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
    sql: ${TABLE}.label ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
