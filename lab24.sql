SET SERVEROUTPUT ON;

DECLARE
    sal EMPL.BASICSAL%TYPE;
BEGIN
    SELECT BASICSAL
    INTO sal
    FROM EMPL
    WHERE AGE = 50;

    DBMS_OUTPUT.PUT_LINE('Salary = ' || sal);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found whose age is 50.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee has age 50.');
END;
/