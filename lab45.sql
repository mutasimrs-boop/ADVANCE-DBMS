CREATE OR REPLACE FUNCTION get_balance
(
    p_acno IN NUMBER
)
RETURN NUMBER
IS
    p_balance NUMBER(10,2);
BEGIN
    SELECT BALANCE
    INTO p_balance
    FROM ACCOUNT
    WHERE ACNO = p_acno;

    RETURN p_balance;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;
/