CREATE OR REPLACE PROCEDURE increase_salary
(
    p_deptno IN NUMBER,
    p_per    IN NUMBER
)
IS
BEGIN
    UPDATE EMPL
    SET BASICSAL = BASICSAL + (BASICSAL * p_per / 100)
    WHERE DEPTNO = p_deptno;

    DBMS_OUTPUT.PUT_LINE('Salary updated successfully.');
END;
/