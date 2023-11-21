# The name of this view in Looker is "German Dataset"
view: german_dataset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.german_dataset` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.AGE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age {
    type: sum
    sql: ${age} ;;  }
  measure: average_age {
    type: average
    sql: ${age} ;;  }

  dimension: bill_amt1 {
    type: number
    sql: ${TABLE}.BILL_AMT1 ;;
  }

  dimension: bill_amt2 {
    type: number
    sql: ${TABLE}.BILL_AMT2 ;;
  }

  dimension: bill_amt3 {
    type: number
    sql: ${TABLE}.BILL_AMT3 ;;
  }

  dimension: education {
    type: string
    sql: ${TABLE}.EDUCATION ;;
  }

  dimension: limit_bal {
    type: number
    sql: ${TABLE}.LIMIT_BAL ;;
  }

  dimension: marriage {
    type: string
    sql: ${TABLE}.MARRIAGE ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.SEX ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.TARGET ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
