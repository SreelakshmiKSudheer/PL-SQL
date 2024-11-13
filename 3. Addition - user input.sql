SET SERVEROUTPUT ON;

DECLARE
    an NUMBER := &an;
    bn NUMBER := &bn;
BEGIN
    dbms_output.put_line('Sum = ' || (an + bn));
END;
/

-- if floating point values appear, specify it in parathesis to number()
-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\3. Addition - user input.sql"