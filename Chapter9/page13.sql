create table time_example
    (order_date timestamp with local time zone);
    
insert into time_example
values('15-JAN-04 09:34:28 AM');

select *
from time_example;