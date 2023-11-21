# The name of this view in Looker is "Prediction"
view: prediction {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.prediction` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Predicted" in Explore.

  dimension: predicted {
    type: number
    sql: ${TABLE}.Predicted ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_predicted {
    type: sum
    sql: ${predicted} ;;  }
  measure: average_predicted {
    type: average
    sql: ${predicted} ;;  }

  dimension: weekly_sales {
    type: number
    sql: ${TABLE}.Weekly_Sales ;;
  }
  measure: count {
    type: count
  }
}
