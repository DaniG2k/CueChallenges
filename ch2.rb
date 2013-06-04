require 'prime'

def fib(n)
  fib, n1, n2 = 0, 1, 0
  f = []
  while fib < n
    n2 = + n1
    fib, n1 = n1, n2
    f << fib
  end
  f
end

result = 0
fib(1000000).each do |n|
  if n.prime? and n > 227000
    result = n+1
    break
  end
end

arr = []
result.prime_division.each do |pair|
  arr << pair[0]
end
puts arr.inject(:+)
