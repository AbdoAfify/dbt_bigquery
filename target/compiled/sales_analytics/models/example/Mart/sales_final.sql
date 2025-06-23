SELECT
  country,
  product_name,
  COUNT(order_id) AS total_orders,
  SUM(amount) AS total_revenue,
  
    CASE
        WHEN DATE(order_date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH)
        THEN 'recent'
        ELSE 'historical'
    END AS partition_group

FROM `ace-amplifier-463712-b1.sales_dataset.raw_sales`
GROUP BY country, product_name, partition_group