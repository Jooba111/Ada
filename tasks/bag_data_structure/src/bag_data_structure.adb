
with Ada.Text_IO; use Ada.Text_IO;
with Bag;

procedure Bag_Data_Structure is
begin

   Bag.Insert_One(5);
   Bag.Insert_Multiple(10, 3);
   Bag.Insert_Multiple(7, 2);

   Bag.Print;

   Bag.Extract_One(10);
   Bag.Print;

   Bag.Extract_Multiple(7, 3);
   Bag.Print;

   if Bag.Is_Empty then
      Put_Line("Bag is empty.");
   else
      Put_Line("Bag is not empty.");
   end if;
end Bag_Data_Structure;