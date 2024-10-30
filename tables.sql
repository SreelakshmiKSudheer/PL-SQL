create table tab1(n number, p varchar(20));

insert into tab1 values(
    1,'one',
    2,'two'
);
SELECT * from tab1;

accept n number prompt 'Enter a number: ' 
declare
    n number := &n;
    i number;
    num number;
    var varchar(20);

BEGIN
    i := 0;
    for i in 0..n 
        num := &num;
        var := &var;
        insert into tab1
    end loop;
end;

/