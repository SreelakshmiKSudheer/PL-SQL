-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\6. Employee Pension - Cursors.sql"

set serveroutput on
clear screen;
/*
Given the schema Employee (empid, empname, joining date, relieving date, salary)
(a) Find the service (in years) for each relieved employee.
(b) Find the Pension amount to be paid to each relieved employee. (Pension is equal to
the years of service *salary divided by 100.
*/

create table employee(
    empid int, 
    empname varchar(20),
    joinDate date,
    relieveDate date,
    salary decimal(10,2)
);

insert into employee values(1,'Kakashi',date '1995-10-10',date '2017-12-30',100000);
insert into employee values(2,'Asuma',date '1999-01-01',date '2013-12-30',60000);
insert into employee values(4,'Kuranai',date '2001-06-27',date '2014-12-30',50000);
insert into employee values(3,'Guy',date '2000-02-12',date '2016-12-30',90000);


declare 
    empvar employee%rowtype;
    service int;
    pension decimal(7,2);
    cursor emp IS
    select * into empvar from employee;


BEGIN
    -- select * into empvar from employee where empid = 1;
    -- dbms_output.put_line(empvar.empid || ' ' || empvar.empname || ' ' || empvar.joinDate || ' ' || empvar.relieveDate || ' ' || empvar.salary );
    -- dbms_output.put_line(floor((empvar.relieveDate - empvar.joinDate)/365));

    open emp;
    loop

    fetch emp into empvar;
    exit when emp % notfound;

    service := floor((empvar.relieveDate - empvar.joinDate)/365);
    pension := (service * empvar.salary) / 100;

    DBMS_OUTPUT.PUT_LINE('=====================================================');

    DBMS_OUTPUT.PUT_LINE('ID: ' || empvar.empid);
    DBMS_OUTPUT.PUT_LINE('Name: ' || empvar.empname);
    DBMS_OUTPUT.PUT_LINE('Joining Date: ' || empvar.joinDate);
    DBMS_OUTPUT.PUT_LINE('Relieving Date: ' || empvar.relieveDate);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || empvar.salary);
    DBMS_OUTPUT.PUT_LINE('Service: ' || service);
    DBMS_OUTPUT.PUT_LINE('Pension: ' || pension);
    
    DBMS_OUTPUT.PUT_LINE('=====================================================');
    
    end loop;
    close emp;

end;
/

drop table employee;