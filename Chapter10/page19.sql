create or replace view empvu10 (employee_number, employee_name, job_title)
as select employee_id, last_name, job_id
from employees
where department_id = 10
with read only;

select *
from empvu10;

--cannot perform a DML operation on a read-only view
update empvu10
set employee_name = 'Shamim'
where employee_number = 200;

--cannot perform a DML operation on a read-only view
delete from empvu10
where employee_number = 200;