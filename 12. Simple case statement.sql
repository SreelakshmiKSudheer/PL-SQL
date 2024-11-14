set serveroutput ON

DECLARE
    grade varchar(2) := &grade;
    greetings varchar(20);

BEGIN
    greetings := CASE grade
        when 'S' then 'outstanding'
        when 'A' then 'excellent'
        when 'B' then 'good'
        when 'c' then 'not bad'
        when 'd' then 'bad'
        when 'f' then 'fail'
        else 'invalid'
    end;
    DBMS_OUTPUT.PUT_LINE(greetings);

end;
/

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\11. Simple case statement.sql"