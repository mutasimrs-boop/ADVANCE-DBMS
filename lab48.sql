
CREATE OR REPLACE PROCEDURE SEARCH_EMP
(
    p_no IN NUMBER,
    p_name OUT VARCHAR2
)
IS
BEGIN
    SELECT ENAME INTO p_name
    FROM EMP
    WHERE EMPNO = p_no;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_name := 'Employee not found';
END;
/
