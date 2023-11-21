# The name of this view in Looker is "Fmi Sales Dummy"
view: fmi_sales_dummy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_dataset.fmi_sales_dummy` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customer_segment {
    type: string
    sql: ${TABLE}.customer_segment ;;
  }

  dimension: gmv {
    type: number
    sql: ${TABLE}.gmv ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.profit ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_profit {
    type: sum
    sql: ${profit} ;;  }
  measure: average_profit {
    type: average
    sql: ${profit} ;;  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.target ;;
  }
  measure: count {
    type: count
  }
}
