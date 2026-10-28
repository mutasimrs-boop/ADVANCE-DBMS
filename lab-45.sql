SET SERVEROUTPUT ON;

DECLARE
    ac NUMBER := &ac;
    bal NUMBER;
BEGIN
    bal := get_balance(ac);

    IF bal = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Account not found');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Balance = ' || bal);
    END IF;
END;
/