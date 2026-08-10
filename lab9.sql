SET SERVEROUTPUT ON;

DECLARE
BEGIN
    FOR emp_rec IN (
        SELECT *
        FROM empl
        WHERE GENDER = 'M'
          AND UPPER(DEPTNAME) = 'HR'
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('EID        : ' || emp_rec.EID);
        DBMS_OUTPUT.PUT_LINE('ENAME      : ' || emp_rec.ENAME);
        DBMS_OUTPUT.PUT_LINE('DEPTNO     : ' || emp_rec.DEPTNO);
        DBMS_OUTPUT.PUT_LINE('DEPTNAME   : ' || emp_rec.DEPTNAME);
        DBMS_OUTPUT.PUT_LINE('GENDER     : ' || emp_rec.GENDER);
        DBMS_OUTPUT.PUT_LINE('AGE        : ' || emp_rec.AGE);
        DBMS_OUTPUT.PUT_LINE('BASICSAL   : ' || emp_rec.BASICSAL);
        DBMS_OUTPUT.PUT_LINE('-------------------------------');
    END LOOP;
END;
/