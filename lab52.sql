--definition
create or replace trigger def_3
before insert on emp_sal
for each row
begin
          if :NEW.salary > 50000 then
Raise_application_error(-20010,'you cant enter salary above 50000');
end if;
end def3;
/