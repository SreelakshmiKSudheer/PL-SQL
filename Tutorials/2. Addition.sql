SET SERVEROUTPUT ON;

DECLARE
    an NUMBER := 5;
    bn NUMBER := 6;
BEGIN
    dbms_output.put_line('Sum = ' || (an + bn));
END;
/

-- if floating point values appear, specify it in parathesis to number()