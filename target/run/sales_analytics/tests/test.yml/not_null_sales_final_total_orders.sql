
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_orders
from `ace-amplifier-463712-b1`.`sales_dataset`.`sales_final`
where total_orders is null



  
  
      
    ) dbt_internal_test