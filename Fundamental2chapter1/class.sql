conn sys as sysdba;

create user bd1 identified by bd1;

create role rolebd1;

grant create session, create table to rolebd1;

grant any table rolebd1 to bd1;

conn bd1/bd1;

create table tablebd1(id number(10), name varchar2(50));

insert into tablebd1(id, name) values(100, 'Zakir');

select * from tablebd1;

/*********************************************************/

conn sys as sysdba;

create user cmanager identified by cmanager;

--create role roleAdmin;

create role roleUser;

grant dba2 to roleAdmin;

grant roleAdmin to cmanager;

conn cmanager/cmanager;

create table student(id number(10) primary key, name varchar2(50));

insert into student(id, name) values(200, 'Urmi');

create user firoza identified by firoza;

grant create session to firoza;

grant select on student to firoza with grant option;

grant create view to firoza;

conn firoza/firoza;

select * from cmanager.student;

/****************************************************************/

conn cmanager/cmanager;

create user agm identified by agm;

grant create session to agm;

grant select, insert on student to agm with grant option;

conn agm/agm;

insert into cmanager.student(id, name) values(220, 'Rumi');



/******************************************************************/

Step 1: Login as sysdba
Step 2: Create user cmanager
Step 3: Grant dba to cmanager
Step 4: Login as cmanager
Step 5: Create a table
Step 6: Insert table
Step 7: Create user firoza

/******************************************************************/

You have to create 3 users on 3 different levels as manager, operator and guest
Manager can create users table new data and in insert and  


/********************************* Answer **********************************************/

SQL> conn sys as sysdba;

SQL> create user bdmanager identified by bdmanager;

SQL> grant dba to bdmanager;

SQL> conn bdmanager/bdmanager;

SQL> create table student(id number(10) primary key, name varchar2(50));

SQL> insert into student(id, name) values(200, 'Shamim');

SQL> create user bdoperator identified by bdoperator;

SQL> create user bdguest identified by bdguest;

SQL> grant create session to bdoperator;

SQL> grant create session to bdguest;

SQL> grant select, insert on student to bdoperator with grant option;

SQL> grant select on student to bdguest with grant option;

SQL> conn bdoperator/bdoperator;

SQL> grant create session to bdoperator;

SQL> select * from bdmanager.student;

SQL> insert into bdmanager.student(id, name) values(210, 'xyz');

SQL> select * from bdmanager.student;

SQL> drop user bdoperator cascade;


