set serveroutput on;
declare
A number := 100;
B number :=0;
C number;
begin
c := A/B;
dbms_output.put_line('result ='|| C);
exception
when zero_divide then
dbms_output.put_line('error:cannot divide by zero.');
end;
/