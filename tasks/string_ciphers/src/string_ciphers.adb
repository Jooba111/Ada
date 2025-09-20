with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Text_IO; use Ada.Text_IO;
with Helper; use Helper;

procedure String_Ciphers is
   Word : String := "ELTE_JUBA"; -- "AHPA";
begin

   Put_Line("Initial string: " & Word);

   Caesar_Cipher(Word, 25, True);
   Put_Line("Caesar Cipher encoded: " & Word);
   Caesar_Cipher(Word, 25, False);
   Put_Line("Caesar Cipher decoded: " & Word);

   Put_Line("Initial string: " & Word);

   Atbash_Cipher(Word);
   Put_Line("Atbash Cipher encoded: " & Word);
   Atbash_Cipher(Word);
   Put_Line("Atbash Cipher decoded: " & Word);


end String_Ciphers;
