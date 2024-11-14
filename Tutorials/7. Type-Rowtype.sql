SET SERVEROUTPUT ON;

CREATE TABLE customer (
    id INT,
    name VARCHAR2(20),
    dob DATE,
    mobile NUMBER,
    city VARCHAR2(20)
);

INSERT INTO customer VALUES (1, 'Kakashi', DATE '1998-09-15', 7894651230, 'konoha');
INSERT INTO customer VALUES (2, 'Naruto', DATE '2002-10-10', 7896451230, 'konoha');
INSERT INTO customer VALUES (3, 'Sasuke', DATE '2001-05-05', 7894561230, 'konoha');
INSERT INTO customer VALUES (4, 'Sakura', DATE '2001-02-15', 8794651230, 'konoha');

SELECT * FROM customer;

DECLARE
    phone NUMBER;

    -- %type
    phoneNo customer.mobile%type;

    -- %rowtype
    cust customer%rowtype;

BEGIN
    -- SELECT command
    SELECT mobile INTO phone FROM customer WHERE id = 1;
    DBMS_OUTPUT.PUT_LINE(phone);
    SELECT mobile into phoneNo from customer where id = 1;
    DBMS_OUTPUT.PUT_LINE(phoneNo);
    SELECT * into cust from customer where id = 1;
    DBMS_OUTPUT.PUT_LINE(cust.id || ' ' || cust.name || ' ' || cust.dob || ' ' || cust.mobile || ' ' || cust.city);
END;
/

SELECT * from customer;

DROP TABLE customer;

-- @ "C:\Users\user\OneDrive\Documents\Courses\PL SQL\7. Type-Rowtype.sql"
