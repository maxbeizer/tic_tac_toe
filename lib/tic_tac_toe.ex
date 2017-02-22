defmodule TicTacToe do
  def render_board(moves) do
    moves
    |> convert_moves_to_xo_tuples
    |> turn_tuples_into_lists
    |> Enum.chunk(3)
  end

  defp convert_moves_to_xo_tuples(moves) do
    moves
    |> Enum.zip(Stream.cycle(["X", "O"]))
  end

  defp turn_tuples_into_lists(tuples) do
    Enum.map(1..9, fn(num) ->
      List.keyfind(tuples, num, 0, {nil, nil})
      |> elem(1)
    end)
  end
end
