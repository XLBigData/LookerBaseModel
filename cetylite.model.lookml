- connection: cetylite

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: dim_customers
  
- explore: dim_date

- explore: dim_distributors

- explore: dim_products
  

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


