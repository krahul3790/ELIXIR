defmodule Big do

  def big([]), do: []
  def big(list), do: big(list, 0)
  def big([head|tail], cur_max), do: big(tail, max(head, cur_max))
  def big([], cur_max), do: cur_max

  def bigReduce(list) do
    list 
    |> Enum.reduce(0, fn x,acc -> max(x,acc) end)
  end

  def small([head|rest]), do: small(rest, head)
  def small([], cur_small), do: cur_small
  def small([head|rest], cur_small) when head >= cur_small do
    small(rest, cur_small)
  end
  def small([head|rest], cur_small) when head < cur_small do
    small(rest, head)
  end

  def smallReduce([head|rest]) do
    rest
    |> Enum.reduce(head, fn x,acc -> min(x,acc) end)
  end 

end
