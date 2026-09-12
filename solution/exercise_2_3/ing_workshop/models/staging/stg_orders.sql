/*
  This model stages the raw orders data from the e-commerce source.
  You can play with the configuration options here.
*/
{{ config(materialized='table') }}
with raw_orders as (
    select *
    from {{ source('ecom', 'raw_orders') }}
)

SELECT id as order_id,
       customer as customer_id,
       tax_paid as tax_paid_cents,
       store_id,
       order_total as order_total_cents,
       subtotal as subtotal_cents
FROM raw_orders