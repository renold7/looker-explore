# The name of this view in Looker is "San Fransisco Bikeshare Training"
view: san_fransisco_bikeshare_training {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.san_fransisco_bikeshare_training` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bike Number" in Explore.

  dimension: bike_number {
    type: number
    sql: ${TABLE}.bike_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bike_number {
    type: sum
    sql: ${bike_number} ;;  }
  measure: average_bike_number {
    type: average
    sql: ${bike_number} ;;  }

  dimension: bike_share_for_all_trip {
    type: string
    sql: ${TABLE}.bike_share_for_all_trip ;;
  }

  dimension: c_subscription_type {
    type: string
    sql: ${TABLE}.c_subscription_type ;;
  }

  dimension: duration_sec {
    type: number
    sql: ${TABLE}.duration_sec ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date ;;
  }

  dimension: end_station_geom {
    type: string
    sql: ${TABLE}.end_station_geom ;;
  }

  dimension: end_station_id {
    type: number
    sql: ${TABLE}.end_station_id ;;
  }

  dimension: end_station_latitude {
    type: number
    sql: ${TABLE}.end_station_latitude ;;
  }

  dimension: end_station_longitude {
    type: number
    sql: ${TABLE}.end_station_longitude ;;
  }

  dimension: end_station_name {
    type: string
    sql: ${TABLE}.end_station_name ;;
  }

  dimension: member_birth_year {
    type: number
    sql: ${TABLE}.member_birth_year ;;
  }

  dimension: member_gender {
    type: string
    sql: ${TABLE}.member_gender ;;
  }

  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
  }

  dimension: start_station_geom {
    type: string
    sql: ${TABLE}.start_station_geom ;;
  }

  dimension: start_station_id {
    type: number
    sql: ${TABLE}.start_station_id ;;
  }

  dimension: start_station_latitude {
    type: number
    sql: ${TABLE}.start_station_latitude ;;
  }

  dimension: start_station_longitude {
    type: number
    sql: ${TABLE}.start_station_longitude ;;
  }

  dimension: start_station_name {
    type: string
    sql: ${TABLE}.start_station_name ;;
  }

  dimension: subscriber_type {
    type: string
    sql: ${TABLE}.subscriber_type ;;
  }

  dimension: trip_id {
    type: string
    sql: ${TABLE}.trip_id ;;
  }
  measure: count {
    type: count
    drill_fields: [start_station_name, end_station_name]
  }
}
