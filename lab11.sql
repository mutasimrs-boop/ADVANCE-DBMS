SET SERVEROUTPUT ON;

DECLARE
    V_COUNT NUMBER;
BEGIN
    UPDATE EMPL
    SET BASICSAL = BASICSAL + (BASICSAL * 10 / 100)
    WHERE DEPTNO = 10;

    V_COUNT := SQL%ROWCOUNT;

    IF V_COUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(V_COUNT || ' employee(s) found.');
        DBMS_OUTPUT.PUT_LINE('Basic salary increased by 10%.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employee found in department number 10.');
    END IF;
END;
/