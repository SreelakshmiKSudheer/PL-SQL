set serveroutput ON

DECLARE
    counter int := 1;

begin
    LOOP
        dbms_output.put_line(counter);
        counter := counter + 1;
        exit when counter > 5;
    end loop;
end;
/

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\9. Loop.sql"