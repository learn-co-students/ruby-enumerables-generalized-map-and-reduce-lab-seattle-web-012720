# Your Code Here
def map (array)
  i = 0
  new = []
  while i < array.length do
    new << yield(array[i])
    i += 1
  end
  new
end

def reduce (array, starting_value = nil)
  if starting_value
    i = 0
    total = starting_value
  else
    i = 1
    total = array[0]
  end
  while i < array.length do
    total = yield(total, array[i])
    i += 1
  end
  total
end