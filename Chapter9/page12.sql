create table new_employees
    (
    employee_id number,
    first_name varchar2(15),
    last_name varchar2(15),
    start_date timestamp(7)
    );

insert into new_employees
values(101, 'Shamim', 'Sarker', '17-JUN-03');
insert into new_employees
values(102, 'Shahin', 'Rahman', '21-SEP-03');

select start_date
from new_employees;