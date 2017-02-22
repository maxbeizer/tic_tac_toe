defmodule TicTacToeTest do
  use ExUnit.Case
  doctest TicTacToe

  test "maps one move" do
    assert TicTacToe.map_moves_to_board([3]) == [
      [nil, nil, "X"],
      [nil, nil, nil],
      [nil, nil, nil]
    ]
  end

  test "maps two moves" do
    assert TicTacToe.map_moves_to_board([3, 2]) == [
      [nil, "O", "X"],
      [nil, nil, nil],
      [nil, nil, nil]
    ]
  end

  test "prints the stupid board" do
    assert TicTacToe.print_board([]) == ~S"""
       |   |   
    ---|---|---
       |   |   
    ---|---|---
       |   |   
    """
  end

  test "prints the stupid board now with an item in the list" do
    board = [
      [nil, nil, "X"],
      [nil, nil, nil],
      [nil, nil, nil]
    ]

    assert TicTacToe.print_board(board) == ~S"""
       |   | X 
    ---|---|---
       |   |   
    ---|---|---
       |   |   
    """
  end
end
