SET SERVEROUTPUT ON;

DECLARE
    v_eid NUMBER := &EID;
BEGIN
    DELETE FROM empl
    WHERE eid = v_eid;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee record deleted successfully.');
        COMMIT;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee with EID ' || v_eid || ' not found.');
    END IF;
END;
/