SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &n;
    b NUMBER(10,2);
BEGIN
    b := GET_BALANCE(n);
    DBMS_OUTPUT.PUT_LINE('Account Balance = ' || b);
END;
/