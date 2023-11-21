# The name of this view in Looker is "Credit Card Default Testing"
view: credit_card_default_testing {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.credit_card_default_testing` ;;
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
    # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: bill_amt_1 {
    type: number
    sql: ${TABLE}.bill_amt_1 ;;
  }

  dimension: bill_amt_2 {
    type: number
    sql: ${TABLE}.bill_amt_2 ;;
  }

  dimension: bill_amt_3 {
    type: number
    sql: ${TABLE}.bill_amt_3 ;;
  }

  dimension: bill_amt_4 {
    type: number
    sql: ${TABLE}.bill_amt_4 ;;
  }

  dimension: bill_amt_5 {
    type: number
    sql: ${TABLE}.bill_amt_5 ;;
  }

  dimension: bill_amt_6 {
    type: number
    sql: ${TABLE}.bill_amt_6 ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.education_level ;;
  }

  dimension: limit_balance {
    type: number
    sql: ${TABLE}.limit_balance ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_limit_balance {
    type: sum
    sql: ${limit_balance} ;;  }
  measure: average_limit_balance {
    type: average
    sql: ${limit_balance} ;;  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: pay_0 {
    type: number
    sql: ${TABLE}.pay_0 ;;
  }

  dimension: pay_2 {
    type: number
    sql: ${TABLE}.pay_2 ;;
  }

  dimension: pay_3 {
    type: number
    sql: ${TABLE}.pay_3 ;;
  }

  dimension: pay_4 {
    type: number
    sql: ${TABLE}.pay_4 ;;
  }

  dimension: pay_5 {
    type: string
    sql: ${TABLE}.pay_5 ;;
  }

  dimension: pay_6 {
    type: string
    sql: ${TABLE}.pay_6 ;;
  }

  dimension: pay_amt_1 {
    type: number
    sql: ${TABLE}.pay_amt_1 ;;
  }

  dimension: pay_amt_2 {
    type: number
    sql: ${TABLE}.pay_amt_2 ;;
  }

  dimension: pay_amt_3 {
    type: number
    sql: ${TABLE}.pay_amt_3 ;;
  }

  dimension: pay_amt_4 {
    type: number
    sql: ${TABLE}.pay_amt_4 ;;
  }

  dimension: pay_amt_5 {
    type: number
    sql: ${TABLE}.pay_amt_5 ;;
  }

  dimension: pay_amt_6 {
    type: number
    sql: ${TABLE}.pay_amt_6 ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
