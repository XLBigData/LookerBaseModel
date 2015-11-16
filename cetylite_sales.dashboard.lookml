- dashboard: cetylite_sales
  title: Cetylite Sales
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: Sales_by_Distributor
    title: Monthly Spray Units by Distributor
    type: looker_line
    model: cetylite
    explore: fact_transactions
    dimensions: [dim_date.date_month, dim_distributors.dc_name, dim_products.product_type]
    pivots: [dim_distributors.dc_name, dim_products.product_type]
    measures: [fact_transactions.qty]
    filters:
      dim_products.product_type: '"Spray"'
    sorts: [dim_date.date_month desc]
    limit: 500
    show_null_points: true
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear



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
    limit: 1000
    map: usa
    map_projection: ''
    show_view_names: true
    loading: false
    quantize_colors: false
    colors: []

  - name: Regional_Sales_Losses
    title: Top 100 Regional Losses
    type: looker_geo_coordinates
    model: cetylite
    explore: fact_losses_by_zip
    dimensions: [fact_losses_by_zip.zip_code]
    measures: [fact_losses_by_zip.delta_units]
    sorts: [fact_losses_by_zip.delta_units desc]
    limit: 100
    show_view_names: true
    map: usa
    map_projection: ''
    loading: false
    point_color: red

  - name: Regional_Sales_Gains
    title: Top 100 Regional Gains
    type: looker_geo_coordinates
    model: cetylite
    explore: fact_gains_by_zip
    dimensions: [fact_gains_by_zip.zip_code]
    measures: [fact_gains_by_zip.delta_units]
    sorts: [fact_gains_by_zip.delta_units desc]
    limit: 100
    show_view_names: true
    map: usa
    map_projection: ''
    loading: false
    point_color: green
    
