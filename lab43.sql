CREATE OR REPLACE PROCEDURE search_employee
(
    p_eid  IN NUMBER,
    p_name OUT VARCHAR2
)
IS
BEGIN
    SELECT ENAME
    INTO p_name
    FROM EMPL
    WHERE EID = p_eid;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_name := 'Employee not found';
    WHEN TOO_MANY_ROWS THEN
        p_name := 'Multiple employees found';
END;
/