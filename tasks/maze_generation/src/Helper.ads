with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

package Helper is
   Maze_Height : constant Positive := 25;
   Maze_Width  : constant Positive := 25;

   subtype Row is Positive range 1 .. Maze_Height;
   subtype Col is Positive range 1 .. Maze_Width;

   type Maze_Array is array (Row, Col) of Character;

   procedure Generate (M : in out Maze_Array);
   procedure Print    (M : Maze_Array);

end Helper;