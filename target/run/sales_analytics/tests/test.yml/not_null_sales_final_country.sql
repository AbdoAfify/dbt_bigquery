
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select country
from `ace-amplifier-463712-b1`.`sales_dataset`.`sales_final`
where country is null



  
  
      
    ) dbt_internal_test