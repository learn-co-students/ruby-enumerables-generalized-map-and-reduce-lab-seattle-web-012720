# Your Code Here
def map(source)
  return_array = []
  for i in source do
    return_array.push(yield(i))
  end
  return_array
end

def reduce(source_array, starting_value = nil)
 if starting_value
   sum = starting_value
   i = 0
 else
   sum = source_array[0]
   i = 1
  end
  
  while i < source_array.length
    sum = yield(sum, source_array[i])
    i+=1
  end
  sum
end