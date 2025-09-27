### Generate a random maze using randomized DFS (backtracking) algorithm.

Create a package that defines a Maze type as a two-dimensional array of characters, where '#' represents a wall, ' ' (space) represents a path, '>' represents entrance & exit.

Size of the maze can be hard-coded as (2n+1 x 2k+1) meaning dimensions should have odd length, e.g. (25x25)
The package should expose procedures for maze generation and maze printing to the console.

In the main unit:

1. Define a variable to store the maze
2. Generate the maze and output the result.

_Maze Generation_

Initially populate the maze with '#' (walls), except for two cells for entrance and exit in the outer wall on the top-left and bottom-right of the maze.
Start generation from a fixed cell which is next to the entrance and is not on the outer wall. It should be converted to path, and it becomes current cell.
In a random order check 4 neighbors which are two steps away from the current cell in up, down, left, right direction (you may want to make a custom type for directions).

For each direction in the shuffled order
Calculate the next cell's position
Check if the next cell is within bounds and unvisited (still '#').
If yes, "carve a path": convert the wall between the current and next cell into a path (including the next cell)
Recursively call the function with the next cell as a starting point
If no valid neighbors, backtrack (the recursion returns naturally), therefore the recursion stops when all reachable cells are visited, creating a perfect maze with no loops.
This algorithm guarantees a solvable maze with one path between any two cells. Use recursion for simplicity, but be aware of stack limits for large mazes, use smaller maze size if necessary.

If you want to learn more, or see a visualization of the algorithm, you can find more information here: https://professor-l.github.io/mazes/
