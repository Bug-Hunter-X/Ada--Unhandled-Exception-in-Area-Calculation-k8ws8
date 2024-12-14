```ada
function Calculate_Area(Length : in Float; Width : in Float) return Float is
begin
  if Length < 0.0 or else Width < 0.0 then
     raise Constraint_Error;
  end if;
  return Length * Width;
exception
   when Constraint_Error =>
     Put_Line("Error: Length and Width must be non-negative.");
     return 0.0; -- Or another appropriate default value
end Calculate_Area;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Length : Float := 10.0;
   Width  : Float := 5.0;
   Area   : Float;
begin
   Area := Calculate_Area(Length, Width);
   Put_Line("Area: " & Float'Image(Area));
   
   -- Test with negative input
   Area := Calculate_Area(-10.0, 5.0);
   Put_Line("Area: " & Float'Image(Area));
end Main;
```