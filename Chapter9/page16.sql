create table time_example3
    (day_duration interval day (3) to second);

insert into time_example3 (day_duration)
    values(interval '180' day(3));
    
select sysdate + day_duration "Half Year"
from time_example3;