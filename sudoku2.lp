% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

n(9).
% Defined n as 4 for a 4x4 grid (think this would be easier to redefine when we move to 9x9 instead of hardcoding 1...4)

num(1..N) :- n(N).
row(1..N) :- n(N).
col(1..N) :- n(N).
% achieved: Defined numbers that can be used and num of rows and num of columns by specified grid size

{ grid(X,Y,N) : num(N) } = 1 :- row(X), col(Y).
% achieved: Each cell at (X, Y) must have exactly one value between 1 and 4

:- grid(X, Y1, N), grid(X, Y2, N), Y1 != Y2.
% achieved: Each number must appear exactly once in every row

:- grid(X1, Y, N), grid(X2, Y, N), X1 != X2.
% achieved: Each number must appear exactly once in every column

grid(X, Y, N) :- initial(X, Y, N).
% achieved: Instantiate the board

sudoku(X, Y, N) :- grid(X, Y, N).
% achieved: If Number N at column X and row y of the grid then valid sudoku


subgrid(X, Y, G) :- X = 1, Y = 1, G = 1.
subgrid(X, Y, G) :- X = 1, Y = 2, G = 1.
subgrid(X, Y, G) :- X = 1, Y = 3, G = 1.
subgrid(X, Y, G) :- X = 2, Y = 1, G = 1.
subgrid(X, Y, G) :- X = 2, Y = 2, G = 1.
subgrid(X, Y, G) :- X = 2, Y = 3, G = 1.
subgrid(X, Y, G) :- X = 3, Y = 1, G = 1.
subgrid(X, Y, G) :- X = 3, Y = 2, G = 1.
subgrid(X, Y, G) :- X = 3, Y = 3, G = 1.
% achieved: Top left 9 (X,Y) pairs are part of subgrid 1
subgrid(X, Y, G) :- X = 4, Y = 1, G = 2.
subgrid(X, Y, G) :- X = 4, Y = 2, G = 2.
subgrid(X, Y, G) :- X = 4, Y = 3, G = 2.
subgrid(X, Y, G) :- X = 5, Y = 1, G = 2.
subgrid(X, Y, G) :- X = 5, Y = 2, G = 2.
subgrid(X, Y, G) :- X = 5, Y = 3, G = 2.
subgrid(X, Y, G) :- X = 6, Y = 1, G = 2.
subgrid(X, Y, G) :- X = 6, Y = 2, G = 2.
subgrid(X, Y, G) :- X = 6, Y = 3, G = 2.
% achieved: Top middle 9 (X,Y) pairs are part of subgrid 2

subgrid(X, Y, G) :- X = 7, Y = 1, G = 3.
subgrid(X, Y, G) :- X = 7, Y = 2, G = 3.
subgrid(X, Y, G) :- X = 7, Y = 3, G = 3.
subgrid(X, Y, G) :- X = 8, Y = 1, G = 3.
subgrid(X, Y, G) :- X = 8, Y = 2, G = 3.
subgrid(X, Y, G) :- X = 8, Y = 3, G = 3.
subgrid(X, Y, G) :- X = 9, Y = 1, G = 3.
subgrid(X, Y, G) :- X = 9, Y = 2, G = 3.
subgrid(X, Y, G) :- X = 9, Y = 3, G = 3.
% achieved: Top right 9 (X,Y) pairs are part of subgrid 3

subgrid(X, Y, G) :- X = 1, Y = 4, G = 4.
subgrid(X, Y, G) :- X = 1, Y = 5, G = 4.
subgrid(X, Y, G) :- X = 1, Y = 6, G = 4.
subgrid(X, Y, G) :- X = 2, Y = 4, G = 4.
subgrid(X, Y, G) :- X = 2, Y = 5, G = 4.
subgrid(X, Y, G) :- X = 2, Y = 6, G = 4.
subgrid(X, Y, G) :- X = 3, Y = 4, G = 4.
subgrid(X, Y, G) :- X = 3, Y = 5, G = 4.
subgrid(X, Y, G) :- X = 3, Y = 6, G = 4.
% achieved: Middle left 9 (X,Y) pairs are part of subgrid 4

subgrid(X, Y, G) :- X = 4, Y = 4, G = 5.
subgrid(X, Y, G) :- X = 4, Y = 5, G = 5.
subgrid(X, Y, G) :- X = 4, Y = 6, G = 5.
subgrid(X, Y, G) :- X = 5, Y = 4, G = 5.
subgrid(X, Y, G) :- X = 5, Y = 5, G = 5.
subgrid(X, Y, G) :- X = 5, Y = 6, G = 5.
subgrid(X, Y, G) :- X = 6, Y = 4, G = 5.
subgrid(X, Y, G) :- X = 6, Y = 5, G = 5.
subgrid(X, Y, G) :- X = 6, Y = 6, G = 5.
% achieved: Middle 9 (X,Y) pairs are part of subgrid 5

subgrid(X, Y, G) :- X = 4, Y = 7, G = 6.
subgrid(X, Y, G) :- X = 4, Y = 8, G = 6.
subgrid(X, Y, G) :- X = 4, Y = 9, G = 6.
subgrid(X, Y, G) :- X = 5, Y = 7, G = 6.
subgrid(X, Y, G) :- X = 5, Y = 8, G = 6.
subgrid(X, Y, G) :- X = 5, Y = 9, G = 6.
subgrid(X, Y, G) :- X = 6, Y = 7, G = 6.
subgrid(X, Y, G) :- X = 6, Y = 8, G = 6.
subgrid(X, Y, G) :- X = 6, Y = 9, G = 6.
% achieved: Middle right 9 (X,Y) pairs are part of subgrid 6

subgrid(X, Y, G) :- X = 7, Y = 1, G = 7.
subgrid(X, Y, G) :- X = 7, Y = 2, G = 7.
subgrid(X, Y, G) :- X = 7, Y = 3, G = 7.
subgrid(X, Y, G) :- X = 8, Y = 1, G = 7.
subgrid(X, Y, G) :- X = 8, Y = 2, G = 7.
subgrid(X, Y, G) :- X = 8, Y = 3, G = 7.
subgrid(X, Y, G) :- X = 9, Y = 1, G = 7.
subgrid(X, Y, G) :- X = 9, Y = 2, G = 7.
subgrid(X, Y, G) :- X = 9, Y = 3, G = 7.
% achieved: Bottom left 9 (X,Y) pairs are part of subgrid 7

subgrid(X, Y, G) :- X = 7, Y = 4, G = 8.
subgrid(X, Y, G) :- X = 7, Y = 5, G = 8.
subgrid(X, Y, G) :- X = 7, Y = 6, G = 8.
subgrid(X, Y, G) :- X = 8, Y = 4, G = 8.
subgrid(X, Y, G) :- X = 8, Y = 5, G = 8.
subgrid(X, Y, G) :- X = 8, Y = 6, G = 8.
subgrid(X, Y, G) :- X = 9, Y = 4, G = 8.
subgrid(X, Y, G) :- X = 9, Y = 5, G = 8.
subgrid(X, Y, G) :- X = 9, Y = 6, G = 8.
% achieved: Bottom middle 9 (X,Y) pairs are part of subgrid 8

subgrid(X, Y, G) :- X = 7, Y = 7, G = 9.
subgrid(X, Y, G) :- X = 7, Y = 8, G = 9.
subgrid(X, Y, G) :- X = 7, Y = 9, G = 9.
subgrid(X, Y, G) :- X = 8, Y = 7, G = 9.
subgrid(X, Y, G) :- X = 8, Y = 8, G = 9.
subgrid(X, Y, G) :- X = 8, Y = 9, G = 9.
subgrid(X, Y, G) :- X = 9, Y = 7, G = 9.
subgrid(X, Y, G) :- X = 9, Y = 8, G = 9.
subgrid(X, Y, G) :- X = 9, Y = 9, G = 9.
% achieved: Bottom right 9 (X,Y) pairs are part of subgrid 9



% possible improvement
% maybe there's an easier way to declare each subgrid instead of 1 by 1 for each subgrid 1-N ???

sameSubgrid(X1, Y1, X2, Y2) :- subgrid(X1, Y1, G), subgrid(X2, Y2, G).
% achieved: Defined case where 2 (X, Y) pairs (AKA cells) are a part of the same subgrid

:- sudoku(X1, Y1, N), sudoku(X2, Y2, N), sameSubgrid(X1, Y1, X2, Y2), (X1, Y1) != (X2, Y2).
% achieved: Removed all solutions where two cells are a part of the same subgrid
% achieved: Each number must appear exactly one time in each N x N subgrid 

#show sudoku/3.


