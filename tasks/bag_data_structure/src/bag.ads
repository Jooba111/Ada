package Bag is
   subtype Element_Type is Integer range 1 .. 100;

   procedure Insert_One(Item : Element_Type);
   procedure Insert_Multiple(Item : Element_Type; Count : Natural);
   procedure Extract_One(Item : Element_Type);
   procedure Extract_Multiple(Item : Element_Type; Count : Natural);
   function Is_Empty return Boolean;
   procedure Print;
end Bag;