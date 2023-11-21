# The name of this view in Looker is "Featuredataset"
view: featuredataset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.feature-data-set` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cpi" in Explore.

  dimension: cpi {
    type: string
    sql: ${TABLE}.CPI ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: fuel_price {
    type: number
    sql: ${TABLE}.Fuel_Price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fuel_price {
    type: sum
    sql: ${fuel_price} ;;  }
  measure: average_fuel_price {
    type: average
    sql: ${fuel_price} ;;  }

  dimension: is_holiday {
    type: yesno
    sql: ${TABLE}.IsHoliday ;;
  }

  dimension: mark_down1 {
    type: string
    sql: ${TABLE}.MarkDown1 ;;
  }

  dimension: mark_down2 {
    type: string
    sql: ${TABLE}.MarkDown2 ;;
  }

  dimension: mark_down3 {
    type: string
    sql: ${TABLE}.MarkDown3 ;;
  }

  dimension: mark_down4 {
    type: string
    sql: ${TABLE}.MarkDown4 ;;
  }

  dimension: mark_down5 {
    type: string
    sql: ${TABLE}.MarkDown5 ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.Store ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.Temperature ;;
  }

  dimension: unemployment {
    type: string
    sql: ${TABLE}.Unemployment ;;
  }
  measure: count {
    type: count
  }
}
