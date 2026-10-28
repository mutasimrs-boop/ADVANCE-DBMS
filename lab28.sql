SET SERVEROUTPUT ON;

DECLARE
    A NUMBER := &A;
    B NUMBER := &B;
    C NUMBER;

BEGIN
    C := A / B;

    DBMS_OUTPUT.PUT_LINE('Answer = ' || C);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Cannot divide by zero.');

END;
/