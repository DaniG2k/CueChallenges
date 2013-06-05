require 'prime'
require 'enumerator'

fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

result = 0
result = fib.next until result > 227000 and result.prime?

arr = []
result.next.prime_division.each do |pair|
  arr << pair[0]
end
puts arr.inject(:+)
