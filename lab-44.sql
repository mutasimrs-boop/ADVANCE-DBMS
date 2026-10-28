SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &n;
    ans NUMBER;
BEGIN
    ans := find_square(n);

    DBMS_OUTPUT.PUT_LINE('Square = ' || ans);
END;
/