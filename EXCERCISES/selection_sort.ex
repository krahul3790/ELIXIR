defmodule SelectionSort do 

  def sort([]), do: []
  def sort(list) do
    reverse(sort(list, []))
  end

  defp sort([], sorted_list), do: sorted_list

  defp sort(list, sorted_list) do
    # IO.inspect list
    min = list |> Enum.min
    sort(List.delete(list, min), [min | sorted_list])
  end

  defp reverse([], reversed_list), do: reversed_list
  defp reverse(list), do: reverse(list, [])
  defp reverse([head|tail], reversed_list) do
    reverse(tail, [head | reversed_list])
  end

end
