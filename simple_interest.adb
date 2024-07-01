with Ada.Text_IO; use Ada.Text_IO;

procedure Simple_Interest is
   Principal, Rate, Time : Float;
   Interest : Float;
begin
   Principal := 1000.0;
   Rate := 5.0;
   Time := 3.0;
   Interest := (Principal * Rate * Time) / 100.0;
   Put_Line ("The simple interest is: " & Float'Image(Interest));
end Simple_Interest;
