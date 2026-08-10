--program to converts temperature from Celsius to Fahrenheit.
SET SERVEROUTPUT ON

DECLARE
    celsius NUMBER;
    fahrenheit NUMBER;
BEGIN

    celsius := &celsius;

    fahrenheit := (celsius * 9 / 5) + 32;

    DBMS_OUTPUT.PUT_LINE('Temperature in Celsius    : ' || celsius);
    DBMS_OUTPUT.PUT_LINE('Temperature in Fahrenheit : ' || fahrenheit);
END;
/