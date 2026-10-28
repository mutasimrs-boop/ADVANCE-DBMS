SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_EMP IS
        SELECT ENAME, DEPTNO, BASICSAL
        FROM EMPL
        ORDER BY BASICSAL DESC;

    V_ENAME EMPL.ENAME%TYPE;
    V_DEPTNO EMPL.DEPTNO%TYPE;
    V_SAL EMPL.BASICSAL%TYPE;
BEGIN
    OPEN C_EMP;

    LOOP
        FETCH C_EMP INTO V_ENAME, V_DEPTNO, V_SAL;

        EXIT WHEN C_EMP%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            C_EMP%ROWCOUNT || '. ' ||
            V_ENAME || '  ' ||
            V_DEPTNO || '  ' ||
            V_SAL
        );

        EXIT WHEN C_EMP%ROWCOUNT = 5;
    END LOOP;

    CLOSE C_EMP;
END;
/