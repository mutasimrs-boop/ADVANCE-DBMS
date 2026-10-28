CREATE OR REPLACE TRIGGER check_salary
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
    IF :NEW.SALARY > 50000 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Salary cannot be greater than 50000'
        );
    END IF;
END;
/