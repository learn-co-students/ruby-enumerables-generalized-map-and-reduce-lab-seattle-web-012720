def map(array)
  new = []
  index = 0 
  while index < array.length do
    new << yield(array[index])
    index += 1 
  end
  new
end

def reduce(array, sp = nil)
  if sp
    sum = sp
    index = 0
  else
    sum = array[0]
    index = 1
  end

  while index < array.length do
    sum = yield(sum, array[index])
    index += 1 
  end
  sum
end