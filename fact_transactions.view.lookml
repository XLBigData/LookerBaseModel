- view: fact_transactions
  sql_table_name: looker.fact_transactions
  fields:

# Primary Key

# Foreign Keys
  - dimension: date_id
    type: int
    sql: ${TABLE}.date_id

  - dimension: dc_id
    type: int
    sql: ${TABLE}.dc_id

  - dimension: customer_id
    type: int
    sql: ${TABLE}.customer_id

  - dimension: product_id
    type: int
    sql: ${TABLE}.product_id

# Facts 
  - dimension: unit_price
    type: int
    sql: ${TABLE}.unit_price

#Degenerate Keys
  - dimension: inventory_number
    sql: ${TABLE}.inventory_number

# Measures
  - measure: qty
    type: sum
    drill_fields: [date_id, dc_id, customer_id, product_id]

