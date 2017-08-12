/*Md. Shamim Sarker*/

/*----------------------Page 13---------------------------*/
declare
message varchar2(20):= 'Hello World';
a number(11):=2147483647;
b number(2):=15;
result number(4):=a+b;
begin
dbms_output.put_line(message);
dbms_output.put_line(a);
end;
/
/*----------------------Page 13---------------------------*/

/*-----------------------Page 21--------------------------*/
declare
subtype name IS char(20);
subtype message IS varchar2(100);
salutation name;
greetings message;
begin
salutation := 'Reader ';
greetings := 'Welcome to the World of PL/SQL';
dbms_output.put_line('Hello ' || salutation || greetings);
end;
/
/*-----------------------Page 21--------------------------*/


/*--------------------Page 23------------------------------*/
declare
a integer := 10;
b integer := 20;
c integer;
f real;
begin
c := a+b;
dbms_output.put_line('Value of c: '||c);
f := 70.0/3.0;
dbms_output.put_line('Value of f: ' || f);
end;
/
/*--------------------Page 23------------------------------*/


/*------------------------Page 24-----------------------------*/
DECLARE
    num1 number := 95;
    num2 number := 85;
BEGIN
    dbms_output.put_line('Outer Variable num1: ' || num1);
    dbms_output.put_line('Outer Variable num2: ' || num2);
    DECLARE
       num1 number := 195;
       num2 number := 185;
    BEGIN
       dbms_output.put_line('Inner Variable num1: ' || num1);
       dbms_output.put_line('Inner Variable num2: ' || num2);
    END;
END;
/
/*------------------------Page 24-----------------------------*/

/*------------------------Page 24.2---------------------------*/
create table customer(
	id int not null,
	name varchar(20) not null,
	age int not null,
	address char(25),
	salary decimal(18,2),
	primary key(id)
);

insert into customer(id, name, age, address, salary)
values (1, 'Ramesh', 32, 'Ahmedabad', 2000.00);

insert into customer(id, name, age, address, salary)
values (2, 'Khilan', 25, 'Delhi', 1500.00);

insert into customer(id, name, age, address, salary)
values (3, 'Kaushik', 23, 'Kota', 2000.00);

insert into customer(id, name, age, address, salary)
values (4, 'Chaitali', 25, 'Mumbai', 6500.00);

insert into customer(id, name, age, address, salary)
values (5, 'Hardik', 27, 'Bhopal', 8500.00);

insert into customer(id, name, age, address, salary)
values (6, 'Komal', 22, 'MP', 4500.00);
/*------------------------Page 24.2---------------------------*/
