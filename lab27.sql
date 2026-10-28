SET SERVEROUTPUT ON;

DECLARE
    n1 NUMBER;
    n2 NUMBER;

BEGIN
    n1 := '&N1';
    n2 := '&N2';

    DBMS_OUTPUT.PUT_LINE('Number 1 = ' || n1);
    DBMS_OUTPUT.PUT_LINE('Number 2 = ' || n2);

EXCEPTION
    WHEN INVALID_NUMBER THEN
        DBMS_OUTPUT.PUT_LINE('Invalid number entered.');
END;
/