SELECT
  country,
  product_name,
  COUNT(order_id) AS total_orders,
  SUM(amount) AS total_revenue,
  {{ dynamic_partition('order_date', 'MONTH') }}
FROM `ace-amplifier-463712-b1.sales_dataset.raw_sales`
GROUP BY country, product_name, partition_group
