- view: dim_customers
  sql_table_name: looker.DIM_Customers
  fields:
  
#Primary Keys
  - dimension: customer_id
    primary_key: True
    type: int
    # hidden: true
    sql: ${TABLE}.customer_id

# Dimensions
  - dimension: city
    sql: ${TABLE}.city

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: dea_number
    sql: ${TABLE}.dea_number

  - dimension: state
    sql: ${TABLE}.state

  - dimension: street_address
    sql: ${TABLE}.street_address

  - dimension: zipcode
    type: zipcode
    sql: ${TABLE}.zip_code

# Measures
  - measure: count
    type: count
    drill_fields: [customer_name, state, zipcode]

