
SET SERVEROUTPUT ON;

DECLARE
    d NUMBER := &dno;
    p NUMBER := &per;
BEGIN
    pro_increase(d, p);
END;
/
