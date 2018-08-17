Application.put_env(:elixir, :ansi_enabled, true)

IEx.configure(colors: [enabled: true])

alias IslandsEngine.{Board, Coordinate, Guesses, Island}

board = Board.new()

{:ok, square_coordinate} = Coordinate.new(1, 1)
{:ok, square} = Island.new(:square, square_coordinate)
board = Board.position_island(board, :square, square)

{:ok, dot_coordinate} = Coordinate.new(2, 2)
{:ok, dot} = Island.new(:dot, dot_coordinate)
Board.position_island(board, :dot, dot)

{:ok, new_dot_coordinate} = Coordinate.new(3, 3)
{:ok, dot} = Island.new(:dot, new_dot_coordinate)
board = Board.position_island(board, :dot, dot)

{:ok, guess_coordinate} = Coordinate.new(10, 10)
# {:miss, :none, :no_win, board} = Board.guess(board, guess_coordinate)
