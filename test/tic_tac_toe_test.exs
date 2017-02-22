defmodule TicTacToeTest do
  use ExUnit.Case
  doctest TicTacToe

  test "renders one move" do
    assert TicTacToe.render_board([3]) == [
      [nil, nil, "X"],
      [nil, nil, nil],
      [nil, nil, nil]
    ]
  end

  test "renders two moves" do
    assert TicTacToe.render_board([3, 2]) == [
      [nil, "O", "X"],
      [nil, nil, nil],
      [nil, nil, nil]
    ]
  end
end
