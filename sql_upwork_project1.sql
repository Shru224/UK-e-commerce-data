-- forgot to make a order_status col so made one here

-- added a col name Order_Status
alter table ecom_raw_data
add column Order_Status varchar(20);

-- Updated the col with values
update ecom_raw_data
set Order_Status = 
   case
        when InvoiceNo like 'C%' then 'Cancelled'
        else 'Completed'
    end;
    
-- checking if the chnages were applied
select Order_Status, count(*) as order_count
from ecom_raw_data
group by Order_Status;




