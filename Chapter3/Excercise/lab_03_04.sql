SELECT
    employee_id,
    last_name,
    salary,
    salary + salary * ( 15.5 / 100 ) "New Salary",
    salary*(15.5/100) "Increase"
FROM
    employees;