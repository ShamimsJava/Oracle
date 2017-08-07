create or replace view dept_sum_vu_complex
(minsal, maxsal, avgsal)
as select min(e.salary), max(e.salary), round(avg(e.salary),0)
from employees e join departments d
on (e.department_id = d.department_id);
--group by d.department_name;

select *
from dept_sum_vu_complex;