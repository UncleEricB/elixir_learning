defmodule Sum do

  def sum([]), do: []
  def sum([head | tail])
  do
    head + sum(tail)
  end
end

# Chop.guess(257, 1..1000)
Sum.sum([1,2,3,4,5])
