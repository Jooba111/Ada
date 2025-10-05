with Ada.Text_IO; use Ada.Text_IO;

package body Bag is

   type Bag_Array is array (Element_Type) of Natural;
   Items : Bag_Array := (others => 0);

   procedure Insert_One (Item : Element_Type) is
   begin
      Items (Item) := Items (Item) + 1;
   end Insert_One;

   procedure Insert_Multiple (Item : Element_Type; Count : Natural) is
   begin
      Items (Item) := Items (Item) + Count;
   end Insert_Multiple;

   procedure Extract_One (Item : Element_Type) is
   begin
      if Items (Item) > 0 then
         Items (Item) := Items (Item) - 1;
      else
         Put_Line ("Cannot extract " & Integer'Image (Item) & "not present in bag.");
      end if;
   end Extract_One;

   procedure Extract_Multiple (Item : Element_Type; Count : Natural) is
   begin
      if Items (Item) = 0 then
         Put_Line ("Cannot extract " & Integer'Image (Item) & " not present in bag.");
      elsif Items (Item) < Count then
         Put_Line ("Bag contains fewer than " & Integer'Image (Count) &
                   " of " & Integer'Image (Item));
         Items (Item) := 0;
      else
         Items (Item) := Items (Item) - Count;
      end if;
   end Extract_Multiple;

   function Is_Empty return Boolean is
   begin
      for I in Element_Type loop
         if Items (I) > 0 then
            return False;
         end if;
      end loop;
      return True;
   end Is_Empty;

   procedure Print is
   begin
      if Is_Empty then
         Put_Line ("Bag is empty.");
      else
         Put_Line ("Bag contents:");
         for I in Element_Type loop
            if Items (I) > 0 then
               Put_Line ("  " & Integer'Image (I) & " => " & Integer'Image (Items (I)));
            end if;
         end loop;
      end if;
   end Print;

end Bag;
