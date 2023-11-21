# The name of this view in Looker is "Data Payment"
view: data_payment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.data_payment` ;;
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
    # This dimension will be called "Highest Balance" in Explore.

  dimension: highest_balance {
    type: number
    sql: ${TABLE}.highest_balance ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_highest_balance {
    type: sum
    sql: ${highest_balance} ;;  }
  measure: average_highest_balance {
    type: average
    sql: ${highest_balance} ;;  }

  dimension: new_balance {
    type: number
    sql: ${TABLE}.new_balance ;;
  }

  dimension: ovd_sum {
    type: number
    sql: ${TABLE}.OVD_sum ;;
  }

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

  dimension: prod_code {
    type: number
    sql: ${TABLE}.prod_code ;;
  }

  dimension: prod_limit {
    type: number
    sql: ${TABLE}.prod_limit ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: report {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.report_date ;;
  }

  dimension_group: update {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.update_date ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
