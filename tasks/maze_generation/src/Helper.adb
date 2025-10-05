with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

package body Helper is

   type Direction is (Up, Down, Left, Right);
   type Dir_Array is array (1 .. 4) of Direction;

   subtype Index_Range is Integer range 1 .. 4;
   package Rand_Index is new Ada.Numerics.Discrete_Random (Index_Range);
   use Rand_Index;
   G : Generator;

   procedure Shuffle(Dirs : in out Dir_Array) is
      Tmp : Direction;
      J   : Index_Range;
   begin
      for I in reverse 2 .. Dirs'Last loop
         J := Random(G) mod I + 1;
         Tmp := Dirs(I);
         Dirs(I) := Dirs(J);
         Dirs(J) := Tmp;
      end loop;
   end Shuffle;

   function Safe_Cell(R, C : Integer) return Boolean is
   begin
      return R >= 1 and then R <= Maze_Height and then C >= 1 and then C <= Maze_Width;
   end Safe_Cell;

   procedure Carve(M : in out Maze_Array; R, C : Integer) is
      Dirs : Dir_Array := (1 => Up, 2 => Down, 3 => Left, 4 => Right);
      NR, NC, WR, WC : Integer;
   begin
      M(R, C) := ' ';

      Shuffle(Dirs);

      for D of Dirs loop
         case D is
            when Up =>
               NR := R - 2; NC := C; WR := R - 1; WC := C;
            when Down =>
               NR := R + 2; NC := C; WR := R + 1; WC := C;
            when Left =>
               NR := R; NC := C - 2; WR := R; WC := C - 1;
            when Right =>
               NR := R; NC := C + 2; WR := R; WC := C + 1;
         end case;

         if Safe_Cell(NR, NC) and then Safe_Cell(WR, WC) and then M(NR, NC) = '#' then
            M(WR, WC) := ' ';
            Carve(M, NR, NC);
         end if;
      end loop;
   end Carve;

   procedure Generate(M : in out Maze_Array) is
   begin
      Reset(G);

      for R in Row loop
         for C in Col loop
            M(R, C) := '#';
         end loop;
      end loop;

      M(1, 2) := '>';
      M(Maze_Height, Maze_Width - 1) := '>';

      Carve(M, 2, 2);
   end Generate;

   procedure Print(M : Maze_Array) is
   begin
      for R in Row loop
         for C in Col loop
            Put(M(R, C));
         end loop;
         New_Line;
      end loop;
   end Print;

end Helper;
