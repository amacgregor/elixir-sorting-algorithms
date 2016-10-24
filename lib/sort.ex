defmodule Sort do
  @moduledoc """
  Exercise implementation of several sample sorting algorithms

  ## Examples

    iex> Sort.ssort([10,3,20,15])
    [3,10,15,20]
  """

  def ssort([]), do: []
  def ssort(list), do: selection_sort(list)

  defp selection_sort([]), do: []
  defp selection_sort(list) do
    min=get_min(list)
    [min | selection_sort(List.delete(list, min))]
  end

  defp get_min([h|[]]), do: h 
  defp get_min([f|[s|tail]]) when f<s, do: get_min([f|tail])
  defp get_min([f|[s|tail]]) when f>s, do: get_min([s|tail])
end
