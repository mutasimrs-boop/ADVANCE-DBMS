
SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &n;
    nm VARCHAR2(30);
BEGIN
    SEARCH_EMP(n, nm);

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || nm);
END;
/
