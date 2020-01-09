def testmap(array)
  new = []
  index = 0 
  while index < array.length do
    new << yield(array[index])
    index += 1 
  end
  new
end

def test_reduce(array, sp = 0)
  sum = sp
  index = 0
  while index < array.length do
    sum = yield(sum, array[index])
    index += 1 
  end
  sum
end


test_array = [1, 2, 3, -9]
test_two = [1, 2, 3]
test_3 = [false, nil, nil, nil, true]


#test_reduce(test_two, 100){|memo, n| memo + n}

#puts test_3.reduce(0) { |sum, n| sum + n}

puts false + nil