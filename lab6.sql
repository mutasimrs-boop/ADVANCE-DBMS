SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &N;
    i NUMBER := 1;
BEGIN
    -- Simple LOOP
    DBMS_OUTPUT.PUT_LINE('*** Using Simple LOOP ***');
    i := 1;
    LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
        EXIT WHEN i > n;
    END LOOP;

    -- WHILE LOOP
    DBMS_OUTPUT.PUT_LINE('*** Using WHILE LOOP ***');
    i := 1;
    WHILE i <= n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;

    -- FOR LOOP
    DBMS_OUTPUT.PUT_LINE('*** Using FOR LOOP ***');
    FOR j IN 1..n LOOP
        DBMS_OUTPUT.PUT_LINE(j);
    END LOOP;
END;
/