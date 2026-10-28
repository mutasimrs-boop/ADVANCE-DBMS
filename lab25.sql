SET SERVEROUTPUT ON;

DECLARE
    CURSOR C1 IS
        SELECT EID, ENAME, DEPTNO, DEPTNAME, GENDER, AGE, BASICSAL
        FROM EMPL
        WHERE DEPTNO = &DEPT_NO;

    NO_DEPT_FOUND EXCEPTION;

    CNT NUMBER := 0;

BEGIN
    FOR R IN C1
    LOOP
        INSERT INTO EMP_BACKUP
        VALUES
        (
            R.EID,
            R.ENAME,
            R.DEPTNO,
            R.DEPTNAME,
            R.GENDER,
            R.AGE,
            R.BASICSAL
        );

        CNT := CNT + 1;
    END LOOP;

    IF CNT = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(CNT || ' record(s) inserted.');

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found for entered DEPT_NO.');
END;
/