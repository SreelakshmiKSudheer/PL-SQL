create table KonohaShinobi(
    fname varchar(20),
    lname varchar(20)
);

create table noOfShinobies(
    Total number default 0 
);

create table AfterMarriage(
    fname varchar(20),
    lname varchar(20),
    olname varchar(20)
);

INSERT INTO noOfShinobies VALUES (0);

create or replace trigger shinobiInsertion
after insert on KonohaShinobi
for each ROW
begin 
    update noOfShinobies
    set Total = Total + 1;
end;
/

create or replace trigger marriage
before update on KonohaShinobi
for each ROW
begin 
    if :old.lname != :new.lname then
        insert into AfterMarriage values(:old.fname,:new.lname,:old.lname);
    end if;
end;
/

    insert into KonohaShinobi(fname,lname) values('Kakashi','Hatake');
    insert into KonohaShinobi(fname,lname) values('Naruto','Uzumaki');
    insert into KonohaShinobi(fname,lname) values('Sasuke','Uchiha');
    insert into KonohaShinobi(fname,lname) values('Sakura','Haruno');
    insert into KonohaShinobi(fname,lname) values('Hinata','Hyuga');

UPDATE KonohaShinobi SET lname = 'Uzumaki' WHERE fname = 'Hinata';
UPDATE KonohaShinobi SET lname = 'Uchiha' WHERE fname = 'Sakura';

SELECT * from KonohaShinobi;
SELECT * from noOfShinobies;
SELECT * from AfterMarriage;
drop table AfterMarriage;
drop table noOfShinobies;
drop table KonohaShinobi;

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\17. Trigger 1.sql"