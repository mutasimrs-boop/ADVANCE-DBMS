SET SERVEROUTPUT ON;

DECLARE
    eid NUMBER := &eid;
    nm  VARCHAR2(20);
BEGIN
    search_employee(eid, nm);

    IF nm = 'Employee not found' THEN
        DBMS_OUTPUT.PUT_LINE('Error: Employee ID ' || eid || ' does not exist.');
    ELSIF nm = 'Multiple employees found' THEN
        DBMS_OUTPUT.PUT_LINE('Error: Multiple employees found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || nm);
    END IF;
END;
/