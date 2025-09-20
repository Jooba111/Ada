
package body Helper is
   procedure Caesar_Cipher (Word : in out String; Shift : Integer; Encode : Boolean) is
   Local_Shift : Integer := Shift mod 26;
   begin
      if not Encode then
         Local_Shift := 26 - Local_Shift;
      end if;

      for I in Word'First .. Word'Last loop
         if Word(I) in 'A' .. 'Z' then
            Word(I) := Character'Val(Character'Pos('A') + (Character'Pos(Word(I)) - Character'Pos('A') + Local_Shift) mod 26);
         elsif Word(I) in 'a' .. 'z' then
            Word(I) := Character'Val(Character'Pos('a') + (Character'Pos(Word(I)) - Character'Pos('a') + Local_Shift) mod 26);
         end if;
      end loop;
   end Caesar_Cipher;


   procedure Atbash_Cipher (Word : in out String) is
   begin
      for I in Word'First .. Word'Last loop
         if Word(I) in 'A' .. 'Z' then
            Word(I) := Character'Val(Character'Pos('A') + (25 - (Character'Pos(Word(I)) - Character'Pos('A'))) mod 26);
         elsif Word(I) in 'a' .. 'z' then
            Word(I) := Character'Val(Character'Pos('a') + (25 - (Character'Pos(Word(I)) - Character'Pos('a'))) mod 26);
         end if;
      end loop;

   end Atbash_Cipher;

end Helper;