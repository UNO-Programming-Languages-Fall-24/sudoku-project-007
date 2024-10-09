% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

n(4).
% Defined n as 4 for a 4x4 grid (think this would be easier to redefine when we move to 9x9 instead of hardcoding 1...4)

num(1..N) :- n(N).
row(1..N) :- n(N).
col(1..N) :- n(N).
% achieved: Defined numbers that can be used and num of rows and num of columns by specified grid size

{ grid(X,Y,N) : num(N) } = 1 :- row(X), col(Y).
% acieved: Each cell at (X, Y) must have exactly one value between 1 and 4

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
subgrid(X, Y, G) :- X = 2, Y = 1, G = 1.
subgrid(X, Y, G) :- X = 2, Y = 2, G = 1.
% achieved: Top left 4 (X,Y) pairs are part of subgrid 1

subgrid(X, Y, G) :- X = 1, Y = 3, G = 2.
subgrid(X, Y, G) :- X = 1, Y = 4, G = 2.
subgrid(X, Y, G) :- X = 2, Y = 3, G = 2.
subgrid(X, Y, G) :- X = 2, Y = 4, G = 2.
% achieved: Top right 4 (X,Y) pairs are part of subgrid 2

subgrid(X, Y, G) :- X = 3, Y = 1, G = 3.
subgrid(X, Y, G) :- X = 3, Y = 2, G = 3.
subgrid(X, Y, G) :- X = 4, Y = 1, G = 3.
subgrid(X, Y, G) :- X = 4, Y = 2, G = 3.
% achieved: Bottom left 4 (X,Y) pairs are part of subgrid 3

subgrid(X, Y, G) :- X = 3, Y = 3, G = 4.
subgrid(X, Y, G) :- X = 3, Y = 4, G = 4.
subgrid(X, Y, G) :- X = 4, Y = 3, G = 4.
subgrid(X, Y, G) :- X = 4, Y = 4, G = 4.
% achieved: Bottom right 4 (X,Y) pairs are part of subgrid 4

#show sudoku/3.
#show subgrid/3.
