CREATE OR REPLACE FUNCTION GET_BALANCE
(
    p_acno IN NUMBER
)
RETURN NUMBER
IS
    v_balance NUMBER(10,2);
BEGIN
    SELECT BALANCE INTO v_balance
    FROM ACCOUNT1
    WHERE ACNO = p_acno;

    RETURN v_balance;
END;
/