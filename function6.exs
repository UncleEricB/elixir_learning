defmodule Chop do

  def guess(actual, range) do
    # if actual == middle value in range, you win!
    # if actual < middle value in range, guess(actual, min value..middle value)
    # if actual > middle valuein range, guess(actual, middle value..max value)
    min_val..max_val = range
    mid_val = div((max_val - min_val), 2) + min_val
    IO.puts "Is it #{mid_val}?"
    IO.inspect range
    case actual - mid_val do
      n when n == 0 -> IO.puts "Yes!"
      n when n > 0 -> guess(actual, mid_val..max_val)
      n when n < 0 -> guess(actual, min_val..mid_val)
    end
  end
end

Chop.guess(257, 1..1000)
