declare
    a integer := 10;
    b integer := 20;
    c integer;
    f real;
begin
    c := a+b;
    dbms_output.put_line(c);
    f := 70.0/3.0;
    dbms_output.put_line(f);
end;
/