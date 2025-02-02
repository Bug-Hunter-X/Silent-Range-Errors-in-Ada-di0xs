```ada
function Check_Range(Value : Integer range 10..20) return Boolean is
begin
   return True; -- Always true because the range check happens at the input
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(15);  -- Correct
   Result := Check_Range(5);   -- Constraint_Error exception raised
   Result := Check_Range(25);  -- Constraint_Error exception raised
exception
   when Constraint_Error =>
      Put_Line("Range Error: Value outside allowed range");
end Example;
```