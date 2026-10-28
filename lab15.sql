SET SERVEROUTPUT ON;

DECLARE

    CURSOR C_EMP (P_DEPTNO NUMBER) IS
        SELECT ENAME, BASICSAL
        FROM EMPL
        WHERE DEPTNO = P_DEPTNO;

    V_TOTAL_GROSS NUMBER := 0;

BEGIN

    FOR D IN (SELECT DISTINCT DEPTNO FROM EMPL ORDER BY DEPTNO)
    LOOP

        V_TOTAL_GROSS := 0;

        DBMS_OUTPUT.PUT_LINE('----------------------------------');
        DBMS_OUTPUT.PUT_LINE('DEPARTMENT : ' || D.DEPTNO);
        DBMS_OUTPUT.PUT_LINE('----------------------------------');

        FOR E IN C_EMP(D.DEPTNO)
        LOOP

            DBMS_OUTPUT.PUT_LINE(
                'NAME: ' || E.ENAME ||
                '  BASIC SALARY: ' || E.BASICSAL
            );

            V_TOTAL_GROSS := V_TOTAL_GROSS +
                (E.BASICSAL +
                 (E.BASICSAL * 0.50) +
                 (E.BASICSAL * 0.15) +
                 500 -
                 (E.BASICSAL * 0.10));

        END LOOP;

        DBMS_OUTPUT.PUT_LINE(
            'TOTAL GROSS SALARY: ' || V_TOTAL_GROSS
        );

    END LOOP;

END;
/