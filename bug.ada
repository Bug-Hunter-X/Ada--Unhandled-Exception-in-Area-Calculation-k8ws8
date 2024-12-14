```ada
function Calculate_Area(Length : in Float; Width : in Float) return Float is
begin
  return Length * Width;
end Calculate_Area;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Length : Float := 10.0;
   Width  : Float := 5.0;
   Area   : Float;
begin
   Area := Calculate_Area(Length, Width);
   Put_Line("Area: " & Float'Image(Area));
end Main;
```