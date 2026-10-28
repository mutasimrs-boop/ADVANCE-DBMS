
CREATE OR REPLACE PROCEDURE pro_increase
(
    dno IN NUMBER,
    per IN NUMBER
)
IS
BEGIN
    UPDATE EMP
    SET SALARY = SALARY + (SALARY * per / 100)
    WHERE DEPT = dno;

    DBMS_OUTPUT.PUT_LINE('Salary updated successfully');

    COMMIT;
END;
/
