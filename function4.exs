
# Write a function prefix that takes a string.  It should return a new function
# that takes a second string.  When the second function is called, it will return
# a string containing the first string, a space, and the second string.

prefix = fn n -> ( fn other -> n <> " " <> other end) end

what_time = prefix.("What time is it,")
IO.puts what_time.("Eccles")

