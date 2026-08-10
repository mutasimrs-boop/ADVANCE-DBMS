SET SERVEROUTPUT ON;

DECLARE
    V_RLNO  MID1.RLNO%TYPE := &RLNO;
    V_NAME  MID1.NAME%TYPE;
    V_M1    MID1.M1%TYPE;
    V_M2    MID1.M2%TYPE;
    V_M3    MID1.M3%TYPE;
    V_M4    MID1.M4%TYPE;
    V_M5    MID1.M5%TYPE;

    V_TOTAL NUMBER;
    V_PER   NUMBER(5,2);
    V_GRADE CHAR(1);
    V_RES   VARCHAR2(5);

BEGIN
    SELECT NAME, M1, M2, M3, M4, M5
    INTO V_NAME, V_M1, V_M2, V_M3, V_M4, V_M5
    FROM MID1
    WHERE RLNO = V_RLNO;

    V_TOTAL := V_M1 + V_M2 + V_M3 + V_M4 + V_M5;
    V_PER := V_TOTAL / 5;

    IF V_PER >= 75 THEN
        V_GRADE := 'A';
    ELSIF V_PER >= 60 THEN
        V_GRADE := 'B';
    ELSIF V_PER >= 50 THEN
        V_GRADE := 'C';
    ELSIF V_PER >= 35 THEN
        V_GRADE := 'D';
    ELSE
        V_GRADE := 'F';
    END IF;

    IF V_PER >= 35 THEN
        V_RES := 'PASS';
    ELSE
        V_RES := 'FAIL';
    END IF;

    DBMS_OUTPUT.PUT_LINE('ROLL NO    : ' || V_RLNO);
    DBMS_OUTPUT.PUT_LINE('NAME       : ' || V_NAME);
    DBMS_OUTPUT.PUT_LINE('TOTAL      : ' || V_TOTAL);
    DBMS_OUTPUT.PUT_LINE('PERCENTAGE : ' || V_PER);
    DBMS_OUTPUT.PUT_LINE('RESULT     : ' || V_RES);
    DBMS_OUTPUT.PUT_LINE('GRADE      : ' || V_GRADE);

END;
/