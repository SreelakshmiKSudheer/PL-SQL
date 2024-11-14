SET SERVEROUTPUT ON;

CREATE TABLE customer (
    id INT,
    name VARCHAR2(20),
    dob DATE,
    mobile NUMBER,
    city VARCHAR2(20)
);

INSERT INTO customer VALUES (1, 'Kakashi', DATE '1998-09-15', 7894651230, 'konoha');
INSERT INTO customer VALUES (2, 'Naruto', DATE '2002-10-10', 7896451230, 'konoha');
INSERT INTO customer VALUES (3, 'Sasuke', DATE '2001-05-05', 7894561230, 'konoha');
INSERT INTO customer VALUES (4, 'Sakura', DATE '2001-02-15', 8794651230, 'konoha');

SELECT * FROM customer;

DECLARE
    eName customer.name%type;
    cursor emp
    is select name from customer;
    n number;

begin 
    open emp;
        loop
            fetch emp into eName;
            exit when emp%notfound;
            dbms_output.put_line(eName);
        end loop;
        n := emp%rowcount;
    close emp;
    dbms_output.put_line(n);
end;
/

drop table customer;


-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\14. cursor with loop.sql"