procedure Basics is
   num1: Integer := 10;
   num2: Integer := 20;
begin
   if num1 > num2 then 
      Put_Line(Integer'Image(num1) &  "greater than" & Integer'Image(num2));
   elsif num2 > num1 then
      Put_Line(Integer'Image(num2) &  "greater than" & Integer'Image(num1));
   else 
      Put_Line("Equal");
   end if;

end Basics;
