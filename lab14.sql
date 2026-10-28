SET SERVEROUTPUT ON;

DECLARE
BEGIN
    FOR emp_rec IN (
        SELECT ENAME, BASICSAL
        FROM EMPL
        ORDER BY BASICSAL DESC
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Employee Name: ' || emp_rec.ENAME ||
            '  Basic Salary: ' || emp_rec.BASICSAL
        );

        EXIT WHEN SQL%ROWCOUNT = 3;
    END LOOP;
END;
/