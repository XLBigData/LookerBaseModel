- view: dim_distributors
  sql_table_name: looker.DIM_Distributors
  fields:

#Primary Keys
  - dimension: dc_id
    primary_key: True
    type: int
    sql: ${TABLE}.dc_id

# Dimensions
  - dimension: dc_name
    sql: ${TABLE}.dc_name

# Measures

