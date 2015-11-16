- connection: cetylite

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# Dimension Tables
- explore: dim_customers
- explore: dim_date
- explore: dim_distributors
- explore: dim_products
  
# Fact Tables
- explore: fact_transactions
  joins:
    - join: dim_customers
      foreign_key: customer_id

    - join: dim_date
      foreign_key: date_id
    
    - join: dim_distributors
      foreign_key: dc_id
      
    - join: dim_products
      foreign_key: product_id

- explore: fact_losses_by_zip

- explore: fact_gains_by_zip
