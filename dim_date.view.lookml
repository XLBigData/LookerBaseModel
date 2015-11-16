- view: dim_date
  sql_table_name: looker.DIM_Date
  fields:
  
#Primary Keys
  - dimension: date_id
    primary_key: True
    type: int
    sql: ${TABLE}.date_id

# Dimensions    
  - dimension_group: date
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.Date

# Measures
  - measure: count
    type: count
    drill_fields: [week, month, year]

