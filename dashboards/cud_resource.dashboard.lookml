- dashboard: cud_resource_based
  title: CUD Resource Based
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: jhpkepwxFdSfchtQAJxrzJ
  elements:
  - title: Cores Usage Insights
    name: Cores Usage Insights
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_line
    fields: [gcp_billing_export.usage_start_month, pricing.pricing_usage_type, gcp_billing_export.usage__amount_in_calculated_units]
    pivots: [pricing.pricing_usage_type]
    fill_fields: [gcp_billing_export.usage_start_month]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: Cores%
    sorts: [pricing.pricing_usage_type, gcp_billing_export.usage_start_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: []
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 2
    col: 0
    width: 9
    height: 7
  - title: Cores Cost Insights
    name: Cores Cost Insights
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.usage_start_month, pricing.pricing_usage_type, gcp_billing_export.total_cost]
    pivots: [pricing.pricing_usage_type]
    fill_fields: [gcp_billing_export.usage_start_month]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: Cores%
    sorts: [pricing.pricing_usage_type, gcp_billing_export.usage_start_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: gcp_billing_export.total_cost,
            id: Commitment - gcp_billing_export.total_cost, name: Commitment}, {axisId: gcp_billing_export.total_cost,
            id: Usage - gcp_billing_export.total_cost, name: Usage}], showLabels: true,
        showValues: true, valueFormat: '[>=1000000]$0.00,,"M";$0.00,"K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    label_value_format: "$###,##0"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 2
    col: 9
    width: 15
    height: 7
  - title: 'Cores Instance Generation: Usage & Insights '
    name: 'Cores Instance Generation: Usage & Insights '
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_grid
    fields: [pricing.pricing_sub_type, pricing.pricing_type, pricing.pricing_usage_type,
      gcp_billing_export.total_cost]
    filters:
      pricing.pricing_sub_type: "-NULL"
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: Cores%
    sorts: [gcp_billing_export.total_cost desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 9
    col: 0
    width: 24
    height: 6
  - title: Total Cores Cost
    name: Total Cores Cost
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: Cores%
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 0
    col: 19
    width: 5
    height: 2
  - name: 'Cores: Usage and Cost Insights'
    type: text
    title_text: 'Cores: Usage and Cost Insights'
    body_text: ''
    row: 0
    col: 0
    width: 14
    height: 2
  - title: Memory Cost Insights
    name: Memory Cost Insights
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.usage_start_month, pricing.pricing_usage_type, gcp_billing_export.total_cost]
    pivots: [pricing.pricing_usage_type]
    fill_fields: [gcp_billing_export.usage_start_month]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: RAM%
    sorts: [pricing.pricing_usage_type, gcp_billing_export.usage_start_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "$###,##0"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 17
    col: 9
    width: 15
    height: 7
  - title: 'Memory Instance Generation: Usage & Insights'
    name: 'Memory Instance Generation: Usage & Insights'
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_grid
    fields: [pricing.pricing_sub_type, pricing.pricing_type, pricing.pricing_usage_type,
      gcp_billing_export.total_cost]
    filters:
      pricing.pricing_sub_type: "-NULL"
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: RAM%
    sorts: [gcp_billing_export.total_cost desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 24
    col: 0
    width: 24
    height: 6
  - name: 'Memory: Usage and Cost Insights'
    type: text
    title_text: 'Memory: Usage and Cost Insights'
    body_text: ''
    row: 15
    col: 0
    width: 14
    height: 2
  - title: Total Memory Cost
    name: Total Memory Cost
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: RAM%
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 15
    col: 19
    width: 5
    height: 2
  - title: Memory Usage Insights
    name: Memory Usage Insights
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_line
    fields: [gcp_billing_export.usage_start_month, pricing.pricing_usage_type, gcp_billing_export.usage__amount_in_calculated_units]
    pivots: [pricing.pricing_usage_type]
    fill_fields: [gcp_billing_export.usage_start_month]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: RAM%
    sorts: [pricing.pricing_usage_type, gcp_billing_export.usage_start_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: []
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 17
    col: 0
    width: 9
    height: 7
  - title: 'Persistent Disk: Usage & Insights'
    name: 'Persistent Disk: Usage & Insights'
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.usage_start_month, pricing.pricing_type, gcp_billing_export.total_cost,
      gcp_billing_export.usage__calculated_unit]
    filters:
      pricing.pricing_sub_type: "-NULL"
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: Persistent Disk
    sorts: [gcp_billing_export.total_cost desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: false
    series_text_format:
      gcp_billing_export.total_cost:
        align: center
    defaults_version: 1
    title_hidden: true
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 32
    col: 0
    width: 11
    height: 5
  - title: 'Persistent Disk: Usage & Insights (Copy)'
    name: 'Persistent Disk: Usage & Insights (Copy)'
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.usage_start_month, gcp_billing_export.total_cost,
      gcp_billing_export.sku__description]
    pivots: [gcp_billing_export.sku__description]
    fill_fields: [gcp_billing_export.usage_start_month]
    filters:
      pricing.pricing_sub_type: "-NULL"
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: Persistent Disk
      pricing.pricing_type: SSD Local,SSD Local On-demand
    sorts: [gcp_billing_export.sku__description, gcp_billing_export.total_cost desc
        0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "$###,##0"
    series_colors:
      Snapshot - gcp_billing_export.total_cost: "#5A6874"
      SSD Capacity - gcp_billing_export.total_cost: "#3CC8FF"
      SSD Local On-demand - gcp_billing_export.total_cost: "#e3e935"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: false
    series_text_format:
      gcp_billing_export.total_cost:
        align: center
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    title_hidden: true
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 32
    col: 11
    width: 13
    height: 5
  - title: Total Persistent Disk Cost
    name: Total Persistent Disk Cost
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.usage_start_month: 6 months
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: Persistent Disk
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 30
    col: 19
    width: 5
    height: 2
  - name: 'Persistent Disk: Usage and Cost Insights'
    type: text
    title_text: 'Persistent Disk: Usage and Cost Insights'
    body_text: ''
    row: 30
    col: 0
    width: 13
    height: 2
  - title: Cores Usage Coverage
    name: Cores Usage Coverage
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [pricing.pricing_usage_type, gcp_billing_export.usage__amount_in_calculated_units]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: Cores%
      gcp_billing_export.location__region: ''
      gcp_billing_export.billing_account_id: ''
    sorts: [pricing.pricing_usage_type]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - gcp_billing_export.usage__amount_in_calculated_units
      calculation_type: percent_of_previous
      category: table_calculation
      based_on: gcp_billing_export.usage__amount_in_calculated_units
      label: Percent of previous - Billing Usage Amount In Calculated Units
      source_field: gcp_billing_export.usage__amount_in_calculated_units
      table_calculation: percent_of_previous_billing_usage_amount_in_calculated_units
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Usage Amount, orientation: left, series: [{axisId: gcp_billing_export.usage__amount_in_calculated_units,
            id: Commitment - gcp_billing_export.usage__amount_in_calculated_units,
            name: Commitment}, {axisId: gcp_billing_export.usage__amount_in_calculated_units,
            id: Usage - gcp_billing_export.usage__amount_in_calculated_units, name: Usage}],
        showLabels: true, showValues: true, valueFormat: "#,##0", unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0"
    defaults_version: 1
    hidden_fields: [gcp_billing_export.usage__amount_in_calculated_units]
    hidden_pivots: {}
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 0
    col: 14
    width: 5
    height: 2
  - title: Memory Usage Coverage
    name: Memory Usage Coverage
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [pricing.pricing_usage_type, gcp_billing_export.usage__amount_in_calculated_units]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: VM
      pricing.pricing_type: RAM%
      gcp_billing_export.location__region: ''
      gcp_billing_export.billing_account_id: ''
    sorts: [pricing.pricing_usage_type]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - gcp_billing_export.usage__amount_in_calculated_units
      calculation_type: percent_of_previous
      category: table_calculation
      based_on: gcp_billing_export.usage__amount_in_calculated_units
      label: Percent of previous - Billing Usage Amount In Calculated Units
      source_field: gcp_billing_export.usage__amount_in_calculated_units
      table_calculation: percent_of_previous_billing_usage_amount_in_calculated_units
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Usage Amount, orientation: left, series: [{axisId: gcp_billing_export.usage__amount_in_calculated_units,
            id: Commitment - gcp_billing_export.usage__amount_in_calculated_units,
            name: Commitment}, {axisId: gcp_billing_export.usage__amount_in_calculated_units,
            id: Usage - gcp_billing_export.usage__amount_in_calculated_units, name: Usage}],
        showLabels: true, showValues: true, valueFormat: "#,##0", unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0"
    defaults_version: 1
    hidden_fields: [gcp_billing_export.usage__amount_in_calculated_units]
    hidden_pivots: {}
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 15
    col: 14
    width: 5
    height: 2
  - title: Persistent Disk Usage Coverage
    name: Persistent Disk Usage Coverage
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [pricing.pricing_usage_type, gcp_billing_export.usage__amount_in_calculated_units]
    filters:
      pricing.pricing_usage_type: "-NULL"
      gcp_billing_export.service__description: Compute Engine
      pricing.pricing_category: Persistent Disk
      gcp_billing_export.location__region: ''
      gcp_billing_export.billing_account_id: ''
    sorts: [pricing.pricing_usage_type]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - gcp_billing_export.usage__amount_in_calculated_units
      calculation_type: percent_of_previous
      category: table_calculation
      based_on: gcp_billing_export.usage__amount_in_calculated_units
      label: Percent of previous - Billing Usage Amount In Calculated Units
      source_field: gcp_billing_export.usage__amount_in_calculated_units
      table_calculation: percent_of_previous_billing_usage_amount_in_calculated_units
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Usage Amount, orientation: left, series: [{axisId: gcp_billing_export.usage__amount_in_calculated_units,
            id: Commitment - gcp_billing_export.usage__amount_in_calculated_units,
            name: Commitment}, {axisId: gcp_billing_export.usage__amount_in_calculated_units,
            id: Usage - gcp_billing_export.usage__amount_in_calculated_units, name: Usage}],
        showLabels: true, showValues: true, valueFormat: "#,##0", unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0"
    defaults_version: 1
    hidden_fields: [gcp_billing_export.usage__amount_in_calculated_units]
    hidden_pivots: {}
    listen:
      Project ID: gcp_billing_export.project__id
      Usage Start Date: gcp_billing_export.usage_start_date
    row: 30
    col: 14
    width: 5
    height: 2
  filters:
  - name: Project ID
    title: Project ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.project__id
  - name: Usage Start Date
    title: Usage Start Date
    type: field_filter
    default_value: 6 month ago for 6 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.usage_start_date
