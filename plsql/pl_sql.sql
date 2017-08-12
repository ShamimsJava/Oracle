/*----------------Important-------------------*/
show severoutput;
set set severoutput on;
/*----------------Important-------------------*/

/*############################################*/

/*-----------------Page 15--------------------*/
declare
	message varchar2(20) := 'Hello World';
begin
	dbms_output.put_line(message);
end;
/
/*-----------------Page 15--------------------*/

/*############################################*/

/*-----------------Page 21--------------------*/
declare
	subtype name IS char(20);
	subtype message IS varchar2(100);
	salutation name;
	greetings message;
begin
	salutation := 'Reader ';
	greetings := 'Welcome to the world of PL/SQL';
	dbms_output.put_line('Hello '||salutation||greetings);
end;
/
/*-----------------Page 21--------------------*/

/*############################################*/

/*-----------------Page 23--------------------*/
declare
	a integer := 10;
	b integer := 20;
	c integer;
	f real;
begin
	c := a+b;
	dbms_output.put_line('Value of c: '||c);
	f := 70.0/3.0;
	dbms_output.put_line('Value of f: '||f);
end;
/
/*-----------------Page 23--------------------*/

/*############################################*/

/*-----------------Page 24--------------------*/
declare
	num1 number := 95;
	num2 number := 85;
begin
	dbms_output.put_line('Outer Variable num1: '||num1);
	dbms_output.put_line('Outer Variable num2: '||num2);

	declare
		num1 number := 195;
		num2 number := 185;
	begin
		dbms_output.put_line('Inner Variable num1: '||num1);
		dbms_output.put_line('Inner Variable num2: '||num2);
	end;
end;
/
/*-----------------Page 24--------------------*/

/*############################################*/

/*-----------------Page 24--------------------*/
create table customers(
	id int not null,
	name varchar(20) not null,
	age int not null,
	address char(25),
	salary decimal(18,2),
	primary key (id)
);

insert into customers(id, name, age, address, salary)
values(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);

insert into customers(id, name, age, address, salary)
values(2, 'Shamim', 28, 'Lalmonirhat', 3000.00);

insert into customers(id, name, age, address, salary)
values(3, 'Shahin', 30, 'Mirput', 5000.00);

insert into customers(id, name, age, address, salary)
values(4, 'Shihab', 5, 'Dhaka', 2500.00);

insert into customers(id, name, age, address, salary)
values(5, 'Sohan', 27, 'Barishal', 4000.00);

insert into customers(id, name, age, address, salary)
values(6, 'Urmi', 29, 'Noakhali', 3005.00);


declare
	c_id customers.id%type := 1;
	c_name customers.name%type;
	c_addr customers.address%type;
	c_sal customers.salary%type;
begin
	select name, address, salary into c_name, c_addr, c_sal
	from customers
	where id = c_id;
	
	dbms_output.put_line('Customer '||' from ' || c_addr || ' earns '|| c_sal);
end;
/

/*-----------------Page 24--------------------*/

/*############################################*/

/*-----------------Page 26--------------------*/
declare
	pi constant number := 3.141592654;
	radius number(5,2);
	dia number(5,2);
	circumference number(7,2);
	area number(10,2);
begin
	radius := 9.5;
	dia := radius*2;
	circumference := 2.0*pi*radius;
	area := pi*radius*radius;
	
	dbms_output.put_line('Radius: '||radius);
	dbms_output.put_line('Diameter: '||dia);
	dbms_output.put_line('Circumference: '||circumference);
	dbms_output.put_line('Area: '||area);
end;
/
/*-----------------Page 26--------------------*/
