# Write a function that takes 3 arguments.  If the first two are 0, print "FizzBuzz".
# If the first is 0, print "Fizz".  If the second is 0, print "Buzz".  Else
# print the third argument.

fb_or_not_fb = fn
  {0,0,_} -> "FizzBuzz"
  {0,_,_} -> "Fizz"
  {_,0,_} -> "Buzz"
  {_,_,c} -> c
end

IO.puts fb_or_not_fb.({0,3,2})
IO.puts fb_or_not_fb.({1,0,2})
IO.puts fb_or_not_fb.({0,0,2})
IO.puts fb_or_not_fb.({1,3,2})
IO.puts fb_or_not_fb.({0,A,2})
