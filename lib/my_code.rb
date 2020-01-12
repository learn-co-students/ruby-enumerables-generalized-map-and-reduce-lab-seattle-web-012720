def map(array)
  index = 0 
  new_array = []
  while index < array.length
    new_array.push(yield(array[index]))
    index += 1 
  end
  new_array
end 

def reduce(source_array, starting_point=nil)
  if starting_point
    sum = starting_point
    i = 0 
  else
    sum = source_array[0]
    i = 1 
  end
  while i < source_array.length
  sum = yield(sum, source_array[i])
  i += 1
  end 
  sum
end 