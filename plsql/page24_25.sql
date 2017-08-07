create table customers
(
  id int not null,
  name varchar(20) not null,
  age int not null,
  address char(25),
  salary decimal(18,2),
  primary key (id)
);

----------------------------------------

insert into customers(id, name, age, address, salary)
values (1, 'Shamim', 27, 'Lalmonirhat', 2000.00);

insert into customers(id, name, age, address, salary)
values (2, 'Shihab', 5, 'Dhaka', 1000.00);

insert into customers(id, name, age, address, salary)
values (3, 'Shahin', 31, 'Mirpur', 50000.00);

insert into customers(id, name, age, address, salary)
values (4, 'Beauty', 30, 'Aditmari', 10000.00);

insert into customers(id, name, age, address, salary)
values (5, 'Upoma', 8, 'Mohakhali', 1500.00);

insert into customers(id, name, age, address, salary)
values (6, 'Khadija', 10, 'Netrakona', 1300.00);

-----------------------------------------------------------

declare
    c_id customers.id%type :=1;
    c_name customers.name%type;
    c_addr customers.address%type;
    c_sal customers.salary%type;
    
begin
    select name, address, salary into c_name, c_addr, c_sal
    from customers
    where id = c_id;
    
    dbms_output.put_line
    ('Customer '||c_name||' from '||c_addr||' earns '||c_sal);
end;
/

--------------------------------------------------------------

select *
from customers;