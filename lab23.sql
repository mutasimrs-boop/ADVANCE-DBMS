

SET SERVEROUTPUT ON;

DECLARE
    N EMPL.ENAME%TYPE := '&name';
    S EMPL.BASICSAL%TYPE;
BEGIN
    SELECT BASICSAL
    INTO S
    FROM EMPL
    WHERE LOWER(ENAME) = LOWER(N);

    DBMS_OUTPUT.PUT_LINE('Employee Name = ' || N);
    DBMS_OUTPUT.PUT_LINE('Basic Salary = ' || S);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee does not exist in EMPL table.');
END;
/