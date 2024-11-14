set serveroutput ON

DECLARE
    age number := 20;

BEGIN
    if age < 18 THEN
        dbms_output.PUT_LINE('under');
    elsif age between 18 and 50 then
        dbms_output.PUT_LINE('suitable');
    else
        dbms_output.PUT_LINE('over');
    end if;
end;
/

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\8. Condition statements.sql"