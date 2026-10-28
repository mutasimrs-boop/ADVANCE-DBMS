SET SERVEROUTPUT ON;

DECLARE
    dno NUMBER := &dno;
    per NUMBER := &per;
BEGIN
    increase_salary(dno, per);
END;
/