```ada
function Check_Range(Value : Integer) return Boolean is
begin
   if Value < 10 or Value > 20 then
      return False;
   else
      return True;
   end if;
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(15);  -- Correct, within range
   Result := Check_Range(5);   -- Incorrect, outside range, but no error
   Result := Check_Range(25);  -- Incorrect, outside range, but no error
end Example;
```