nums = [3, 4, 9, 14, 15, 19, 28, 37, 47, 50, 54, 56, 59, 61, 70, 73, 78, 81, 92, 95, 97, 99]

counter = 0
1.upto nums.length do |i|
  nums.combination(i).each do |combo|
    counter += 1 if combo[0..-2].inject(:+) == combo.last
  end
end
puts counter
