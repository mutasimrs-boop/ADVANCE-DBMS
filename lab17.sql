SET SERVEROUTPUT ON;

DECLARE

    CURSOR C_CUSTOMER IS
        SELECT CID, CNAME, CITY, PHONE
        FROM CUSTOMER;

    V_CID CUSTOMER.CID%TYPE;
    V_CNAME CUSTOMER.CNAME%TYPE;
    V_CITY CUSTOMER.CITY%TYPE;
    V_PHONE CUSTOMER.PHONE%TYPE;

BEGIN

    OPEN C_CUSTOMER;

    LOOP

        FETCH C_CUSTOMER
        INTO V_CID, V_CNAME, V_CITY, V_PHONE;

        EXIT WHEN C_CUSTOMER%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || V_CID ||
            '  Name: ' || V_CNAME ||
            '  City: ' || V_CITY ||
            '  Phone: ' || V_PHONE
        );

    END LOOP;

    CLOSE C_CUSTOMER;

END;
/