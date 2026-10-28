
CREATE OR REPLACE PROCEDURE pro_update
IS
BEGIN
    UPDATE EMP
    SET SALARY = SALARY + 1000;

    DBMS_OUTPUT.PUT_LINE('Employee salaries updated successfully');

    COMMIT;
END;
/
