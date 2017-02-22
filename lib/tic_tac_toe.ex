defmodule TicTacToe do
  def all_wins() do
    [[1,2,3],
      [4,5,6],
      [7,8,9],
      [1,4,7],
      [2,5,8],
      [3,6,9],
      [1,5,9],
      [3,5,7]]
  end

  def move(move_list, move) when is_integer(move) do
    cond do
      Enum.member?(move_list, move) ->
        {:error, move_list, "Already played"}
      :else ->
        {:ok, move_list ++ [move]}
    end
  end

  def print_board([]) do
    ~S"""
       |   |   
    ---|---|---
       |   |   
    ---|---|---
       |   |   
    """
  end

  def print_board(board) do
    board
    |> Enum.map(fn(row) ->
      Enum.map(row, fn(x) -> " #{x || " "} " end)
      |> Enum.join("|")
    end)
    |> Enum.join("\n---|---|---\n")
    |> Kernel.<>("\n")

  end

  def map_moves_to_board(moves) do
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
