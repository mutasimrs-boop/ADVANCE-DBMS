SET SERVEROUTPUT ON;

DECLARE
    nm EMPL.ENAME%TYPE := '&NAME';
    sal EMPL.BASICSAL%TYPE;

BEGIN
    SELECT BASICSAL
    INTO sal
    FROM EMPL
    WHERE ENAME = nm;

    DBMS_OUTPUT.PUT_LINE('Employee Name = ' || nm);
    DBMS_OUTPUT.PUT_LINE('Basic Salary = ' || sal);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with name ' || nm);

END;
/