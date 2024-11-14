set serveroutput ON

DECLARE
    counter int := 1;

BEGIN
    for counter in 1..5 LOOP
        dbms_output.put_line(counter);
    end loop;
end;
/

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\10. for loop.sql"