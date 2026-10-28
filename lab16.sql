SET SERVEROUTPUT ON;

DECLARE

    V_DEPTNO NUMBER := &DEPTNO;
    V_COUNT NUMBER := 0;

    NO_DEPT_FOUND EXCEPTION;

    CURSOR C_EMP(P_DEPTNO NUMBER) IS
        SELECT *
        FROM EMPL
        WHERE DEPTNO = P_DEPTNO;

BEGIN

    FOR E IN C_EMP(V_DEPTNO)
    LOOP

        INSERT INTO EMP_BACKUP
        VALUES
        (
            E.EID,
            E.ENAME,
            E.DEPTNO,
            E.DEPTNAME,
            E.GENDER,
            E.AGE,
            E.BASICSAL
        );

        V_COUNT := V_COUNT + 1;

    END LOOP;

    IF V_COUNT = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        V_COUNT || ' employee record(s) inserted into EMP_BACKUP.'
    );

EXCEPTION

    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'NO_DEPT_FOUND: No employees found for Department ' ||
            V_DEPTNO
        );

END;
/