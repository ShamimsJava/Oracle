create or replace view dept_sum_vu
(name, minsal, maxsal, avgsal)
as select d.department_name, min(e.salary), max(e.salary), round(avg(e.salary),0)
from employees e join departments d
on (e.department_id = d.department_id)
group by d.department_name;

select *
from dept_sum_vu;