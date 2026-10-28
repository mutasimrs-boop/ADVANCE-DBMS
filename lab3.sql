SET SERVEROUTPUT ON;

DECLARE
    p_name    VARCHAR2(30);
    qty       NUMBER;
    price     NUMBER;
    total     NUMBER;
    discount  NUMBER;
BEGIN
    p_name := '&Product_Name';
    qty := &Quantity;
    price := &Price;

    total := qty * price;

    IF total < 5000 THEN
        discount := total * 0.05;
    ELSE
        discount := total * 0.10;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Product Name   : ' || p_name);
    DBMS_OUTPUT.PUT_LINE('Quantity       : ' || qty);
    DBMS_OUTPUT.PUT_LINE('Price          : ' || price);
    DBMS_OUTPUT.PUT_LINE('Total Amount   : ' || total);
    DBMS_OUTPUT.PUT_LINE('Discount (Rs.) : ' || discount);
    DBMS_OUTPUT.PUT_LINE('Net Amount     : ' || (total - discount));
END;
/