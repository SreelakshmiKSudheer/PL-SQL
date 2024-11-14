set serveroutput ON

DECLARE
    counter int := 1;

BEGIN
    while counter <= 5 LOOP
        dbms_output.put_line(counter);
        counter := counter + 1;
    end loop;
end;
/

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\9. while loop.sql"