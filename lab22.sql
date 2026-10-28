SET SERVEROUTPUT ON;

DECLARE
    N MARKS.NAME%TYPE := '&name';
    P MARKS.PER%TYPE;
    R MARKS.RESULT%TYPE;
BEGIN
    SELECT PER, RESULT
    INTO P, R
    FROM MARKS
    WHERE LOWER(NAME) = LOWER(N);

    DBMS_OUTPUT.PUT_LINE('Student Name = ' || N);
    DBMS_OUTPUT.PUT_LINE('Marks = ' || P);
    DBMS_OUTPUT.PUT_LINE('Result = ' || R);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student does not exist in MARKS table.');
END;
/