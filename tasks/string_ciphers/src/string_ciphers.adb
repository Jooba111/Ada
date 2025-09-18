with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Text_IO; use Ada.Text_IO;
with Helper; use Helper;

procedure String_Ciphers is
   Word : String := "ELTE"; -- "AHPA";
begin

   Caesar_Cipher(Word, 100, True);
   Put_Line(Word);

end String_Ciphers;
