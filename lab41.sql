SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE pro_msg
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Welcome to PL/SQL Programming');
END;
/

BEGIN
    pro_msg;
END;
/

EXEC pro_msg;