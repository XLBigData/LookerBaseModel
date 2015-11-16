- dashboard: cetylite_sales
  title: Cetylite Sales
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: Regional_Sales_2014
    title: Regional Sales 2014
    type: looker_geo_coordinates
    model: cetylite
    explore: fact_transactions
    dimensions: [dim_customers.zipcode]
    measures: [fact_transactions.qty]
    filters:
      dim_date.date_year: '2014'
    sorts: [fact_transactions.qty desc 0]
    limit: 500
    map: usa
    map_projection: ''
    show_view_names: true
    loading: false
    quantize_colors: false
    colors: []


  - name: Regional_Sales_2015
    title: Regional Sales 2015
    type: looker_geo_coordinates
    model: cetylite
    explore: fact_transactions
    dimensions: [dim_customers.zipcode]
    measures: [fact_transactions.qty]
    filters:
      dim_date.date_year: '2015'
    sorts: [fact_transactions.qty desc 0]
    limit: 500
    map: usa
    map_projection: ''
    show_view_names: true
    loading: false
    quantize_colors: false
    colors: []

  - name: Regional_Sales_Losses
    title: Regional Sales Losses
    type: looker_geo_coordinates
    model: cetylite
    explore: fact_transactions
    dimensions: [dim_customers.zipcode]
    measures: [fact_transactions.qty]
    filters:
      dim_date.date_year: '2015'
    sorts: [fact_transactions.qty desc 0]
    limit: 500
    map: usa
    map_projection: ''
    show_view_names: true
    loading: false
    quantize_colors: false
    colors: []
    point_color: red

  - name: Regional_Sales_gains
    title: Regional Sales Gains
    type: looker_geo_coordinates
    model: cetylite
    explore: fact_transactions
    dimensions: [dim_customers.zipcode]
    measures: [fact_transactions.qty]
    filters:
      dim_date.date_year: '2015'
    sorts: [fact_transactions.qty desc 0]
    limit: 500
    map: usa
    map_projection: ''
    show_view_names: true
    loading: false
    quantize_colors: false
    colors: []
    point_color: green
    
