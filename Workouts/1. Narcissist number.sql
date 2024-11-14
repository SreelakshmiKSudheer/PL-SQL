set serveroutput ON

DECLARE
n number;
num number;
d number := 0;
digit number;
sums number := 0;

BEGIN
    n := &n;
    num := n;

    while num > 0 LOOP
        d := d + 1;
        num := trunc(num / 10);
    end loop;

    num := n;

    while num > 0 LOOP
        digit := MOD(num, 10);
        sums := sums + power(digit,d);
        num := trunc(num/10);
    end loop;

    if sums = n then
      dbms_output.put_line(n || ' is a narcissist number');
    else
      dbms_output.put_line(n || ' is not a narcissist number');
    end if;
end;
/

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\w1. Narcissist number.sql"