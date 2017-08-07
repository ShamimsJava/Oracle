create view empvu80
as select employee_id, last_name, salary
from employees
where department_id = 80;

desc empvu80;

select *
from empvu80;