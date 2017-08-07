create table time_example2
    (loan_duration interval year (3) to month);

insert into time_example2 (loan_duration)
    values(interval '120' month(3));
    
select to_char(sysdate+loan_duration, 'DD-MON-YYYY')
from time_example2;