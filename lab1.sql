--program of simple interest
set serveroutput on
declare
p number:='&p';
r number:='&r';
t number:='&t';
si number;
begin
si:=(p*r*t)/100;
dbms_output.put_line('principal =' ||p);
dbms_output.put_line('rate =' ||r);
dbms_output.put_line('time =' ||t);
dbms_output.put_line('simple interest =' ||si);

end;
/
 
 
 
