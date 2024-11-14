set serveroutput ON

DECLARE
    age number := 20;
    results varchar(20);

BEGIN
    results := case
        when age < 18 then 'under'
        when age between 18 and 50 then 'suitable'
        else 'over'
    end;
    dbms_output.put_line(results);
end;
/

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\12. brach case.sql"