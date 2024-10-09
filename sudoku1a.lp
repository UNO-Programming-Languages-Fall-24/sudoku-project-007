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
% achieved: if Number N at column X and row y of the grid then valid sudoku

#show sudoku/3.
