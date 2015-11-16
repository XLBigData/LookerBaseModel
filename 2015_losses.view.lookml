- view: 2015_losses

  derived_table:
     sql: 
         select zipcode, qty2015 -qty2014 as LostUnits
              from (
              SELECT 
               dim_customers.zip_code AS zipcode,
                SUM(case when YEAR(dim_date.Date) = 2014 then fact_transactions.qty else 0 end) AS qty2014,
                SUM(case when YEAR(dim_date.Date) = 2015 then fact_transactions.qty else 0 end) AS qty2015
              FROM looker.fact_transactions AS fact_transactions
              LEFT JOIN looker.DIM_Customers AS dim_customers ON fact_transactions.customer_id = dim_customers.customer_id
              LEFT JOIN looker.DIM_Date AS dim_date ON fact_transactions.date_id = dim_date.date_id
              GROUP BY dim_customers.zip_code) as RD
              where qty2015 -qty2014 < 0

  fields:
# #     Define your dimensions and measures here, like this:
     - dimension: zipcode
       type: zipcode
       sql: ${TABLE}.LostUnits

     - measure: lost_units
       type: sum
       sql: ${LostUnits}
