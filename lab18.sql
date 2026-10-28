SET SERVEROUTPUT ON;

DECLARE
BEGIN
    FOR C IN
    (
        SELECT CID, CNAME, CITY, PHONE
        FROM CUSTOMER
        WHERE CNAME LIKE 'S%'
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || C.CID ||
            '  Name: ' || C.CNAME ||
            '  City: ' || C.CITY ||
            '  Phone: ' || C.PHONE
        );
    END LOOP;
END;
/