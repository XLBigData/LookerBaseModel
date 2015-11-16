- view: fact_gains_by_zip
  sql_table_name: looker.fact_gains_by_zip
  fields:

# Primary Key

# Foreign Keys
  - dimension: zip_code
    type: zipcode
    sql: ${TABLE}.zip_code

 
# Measures
  - measure: delta_units
    type: sum
    drill_fields: [zip_code]