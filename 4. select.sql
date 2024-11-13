set serveroutput ON

create table employee(id int, name varchar(20));
insert into employee values
(1,'Kakashi');
insert into employee values
(2,'Naruto') ;

DECLARE
names varchar(20);

BEGIN
select name into names from employee where id = 1;
DBMS_OUTPUT.PUT_LINE(names);
end;
/

drop table employee;
-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\4. select.sql"

