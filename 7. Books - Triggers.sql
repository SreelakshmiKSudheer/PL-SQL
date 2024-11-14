-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\7. Books - Triggers.sql"

/*
The following table shows the details of the books available in a library.
Book(Accno, Title, Author, Publisher, Eition, Number of copies)
Write a trigger that displays the total number of tuples in the table on each insertion,
deletion and updation.
*/

set serveroutput ON

CREATE table book(
    Accno int, 
    Titles varchar(50),
    Author varchar(30),
    Publisher varchar(20),
    Edition int,
    NoOfCopies int
);

create or replace trigger onModify
after insert or update or delete on book
for each ROW
declare 
    counter int;
BEGIN
    select count(*) into counter from book;
    dbms_output.put_line('Total no. of books = ' || counter);
end;
/

INSERT INTO book VALUES (1, 'Theory of Automata and Formal Languages', 'Daxtor Kozen', 'Pearson', 12, 2);
INSERT INTO book VALUES (2, 'Fundamentals of Database Management Systems', 'Elmasree Navathe', 'Pearson', 7, 12);
INSERT INTO book VALUES (3, 'Operating Systems', 'Silberschatz', 'Pearson', 10, 16);
INSERT INTO book VALUES (4, 'System Software', 'L Beck', 'Pearson', 6, 18);

update book set NoOfCopies = 1 where Accno = 1;

delete from book where Accno = 1;

commit;

drop table book;
