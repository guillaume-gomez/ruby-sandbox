def fib(n)
  return 1 if n <= 1
  u_zero = 0
  u_one = 1
  u_n = 1

  index = 2
  while index < n
    old_un = u_n
    u_zero = u_one
    u_one = old_un

    u_n = u_zero + u_one
    index += 1
  end
  u_n
end


puts "fib(1) = #{fib(1)}"
puts "fib(2) = #{fib(2)}"
puts "fib(3) = #{fib(3)}"
puts "fib(4) = #{fib(4)}"
puts "fib(5) = #{fib(5)}"