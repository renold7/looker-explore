# The name of this view in Looker is "San Fransisco Bikeshare Answer"
view: san_fransisco_bikeshare_answer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.san_fransisco_bikeshare_answer` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Duration Sec" in Explore.

  dimension: duration_sec {
    type: number
    sql: ${TABLE}.duration_sec ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_duration_sec {
    type: sum
    sql: ${duration_sec} ;;  }
  measure: average_duration_sec {
    type: average
    sql: ${duration_sec} ;;  }

  dimension: trip_id {
    type: string
    sql: ${TABLE}.trip_id ;;
  }
  measure: count {
    type: count
  }
}
