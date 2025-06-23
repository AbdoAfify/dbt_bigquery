{{config (materialized = 'view')}}
SELECT
    order_id,
    product_name,
    amount,
    country,
    order_date,
    {{ dynamic_partition('order_date', 'Month') }}
FROM `ace-amplifier-463712-b1.sales_dataset.raw_sales`
