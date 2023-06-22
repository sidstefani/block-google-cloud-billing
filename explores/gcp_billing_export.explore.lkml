include: "/views/*.view.lkml"
include: "/views/pricing_mapping.view"
include: "/views/cloud_pricing_export.view"

explore: gcp_billing_export {
  label: "Billing"
  join: gcp_billing_export__labels {
    sql:LEFT JOIN UNNEST(${gcp_billing_export.labels}) as gcp_billing_export__labels ;;
    relationship: one_to_many
  }

  join: gcp_billing_export__system_labels {
    sql:LEFT JOIN UNNEST(${gcp_billing_export.system_labels}) as gcp_billing_export__system_labels ;;
    relationship: one_to_many
  }

  join: gcp_billing_export__project__labels {
    sql:LEFT JOIN UNNEST(${gcp_billing_export.project__labels}) as gcp_billing_export__project__labels ;;
    relationship: one_to_many
  }
  
    join: gcp_billing_export__credits {
    sql:LEFT JOIN UNNEST(${gcp_billing_export.credits}) as gcp_billing_export__credits ;;
    relationship: one_to_many
  }

  join: pricing {
    relationship: one_to_one
    sql_on: ${pricing.sku__id} = ${gcp_billing_export.sku__id} ;;
  }

  join: pricing_mapping {
    type: left_outer
    view_label: "Pricing Taxonomy"
    relationship: one_to_one
    fields: [pricing_mapping.marketplace_purchase]
    sql_on: ${pricing_mapping.sku__id} = ${gcp_billing_export.sku__id} ;;
  }
}
