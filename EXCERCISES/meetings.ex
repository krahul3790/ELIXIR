defmodule Meetings do

  def canAttend(list) do
    List.keysort(list,0)
      |> canAttend(-1)
  end

  def canAttend_v2(list) do 
    {res, _} = 
    List.keysort(list,0)
      |> Enum.reduce({true,-1}, fn {start,last},{acc, prevLast} ->
			         case start >= prevLast do
 			           true -> {{acc && true}, last}
			           false ->{{acc && false}, last}
			         end
			        end)
    res
  end

  def canAttend([], _), do: true
  def canAttend([{start,last} | rest], prevLast) when start >= prevLast do
    canAttend(rest, last)
  end
 
  def canAttend([{start,last} | rest], prevLast) when start < prevLast do 
    false
  end

end 
