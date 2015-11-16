- view: dim_products
  sql_table_name: looker.DIM_Products
  fields:

#Primary Keys
  - dimension: product_id
    primary_key: True
    type: int
    # hidden: true
    sql: ${TABLE}.product_id

# Dimensions
  - dimension: ndc_number
    sql: ${TABLE}.ndc_number

  - dimension: product_name
    sql: ${TABLE}.product_name

  - dimension: product_type
    sql: ${TABLE}.product_type


