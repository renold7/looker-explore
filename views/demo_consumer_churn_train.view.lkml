# The name of this view in Looker is "Demo Consumer Churn Train"
view: demo_consumer_churn_train {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.demo_consumer_churn_train` ;;
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
    # This dimension will be called "Account Length" in Explore.

  dimension: account_length {
    type: number
    sql: ${TABLE}.account_length ;;
  }

  dimension: area_code {
    type: number
    sql: ${TABLE}.area_code ;;
  }

  dimension: churn {
    type: yesno
    sql: ${TABLE}.churn ;;
  }

  dimension: international_plan {
    type: yesno
    sql: ${TABLE}.international_plan ;;
  }

  dimension: number_customer_service_calls {
    type: number
    sql: ${TABLE}.number_customer_service_calls ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_customer_service_calls {
    type: sum
    sql: ${number_customer_service_calls} ;;  }
  measure: average_number_customer_service_calls {
    type: average
    sql: ${number_customer_service_calls} ;;  }

  dimension: number_vmail_messages {
    type: number
    sql: ${TABLE}.number_vmail_messages ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: total_day_calls {
    type: number
    sql: ${TABLE}.total_day_calls ;;
  }

  dimension: total_day_charge {
    type: number
    sql: ${TABLE}.total_day_charge ;;
  }

  dimension: total_day_minutes {
    type: number
    sql: ${TABLE}.total_day_minutes ;;
  }

  dimension: total_eve_calls {
    type: number
    sql: ${TABLE}.total_eve_calls ;;
  }

  dimension: total_eve_charge {
    type: number
    sql: ${TABLE}.total_eve_charge ;;
  }

  dimension: total_eve_minutes {
    type: number
    sql: ${TABLE}.total_eve_minutes ;;
  }

  dimension: total_intl_calls {
    type: number
    sql: ${TABLE}.total_intl_calls ;;
  }

  dimension: total_intl_charge {
    type: number
    sql: ${TABLE}.total_intl_charge ;;
  }

  dimension: total_intl_minutes {
    type: number
    sql: ${TABLE}.total_intl_minutes ;;
  }

  dimension: total_night_calls {
    type: number
    sql: ${TABLE}.total_night_calls ;;
  }

  dimension: total_night_charge {
    type: number
    sql: ${TABLE}.total_night_charge ;;
  }

  dimension: total_night_minutes {
    type: number
    sql: ${TABLE}.total_night_minutes ;;
  }

  dimension: voice_mail_plan {
    type: yesno
    sql: ${TABLE}.voice_mail_plan ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
