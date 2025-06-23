
SELECT
    order_id,
    product_name,
    amount,
    country,
    order_date,
    
    CASE
        WHEN DATE(order_date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 Month)
        THEN 'recent'
        ELSE 'historical'
    END AS partition_group

FROM `ace-amplifier-463712-b1.sales_dataset.raw_sales`