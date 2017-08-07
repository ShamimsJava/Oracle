create or replace view empvu20
as select *
from employees
where department_id = 90
with check option constraint empvu20_ck;

update empvu20
set department_id = 10
where employee_id = 201;

select *
from empvu20;