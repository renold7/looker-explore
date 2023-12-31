# The name of this view in Looker is "Credit Card Default Asnwer"
view: credit_card_default_asnwer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.credit_card_default_asnwer` ;;
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
    # This dimension will be called "Default Payment Next Month" in Explore.

  dimension: default_payment_next_month {
    type: string
    sql: ${TABLE}.default_payment_next_month ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
