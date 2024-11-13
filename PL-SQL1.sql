CREATE TABLE Employee(
	num number,
    name varchar(20)
);

insert into employee values(1,'one');
insert into employee values(2,'two');

declare
    i number;
    nam varchar(20) := 'number';
    cursor emp is
        select num,name from employee;

begin
    for i in 3..5 loop
        insert into employee values(i,nam);
    end loop;

    commit;

    open emp;

    loop
        fetch emp into i,nam;
        exit when emp%NOTFOUND;

        dbms_output.put_line('ID: ' || i || '| Name: ' || nam);
    end loop;
    close emp;
end;
/

select * from employee;

drop table employee;