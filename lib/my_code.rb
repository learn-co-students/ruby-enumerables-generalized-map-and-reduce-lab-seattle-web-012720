# Your Code Here
def map(array)
  i=0
  new = []
  while i<array.length do
    new.push(yield(array[i]))
    i+=1
  end
  return new
end

def reduce(array, starting_point=nil)
  if starting_point
    total = starting_point
    i=0
  else
    total = array[0]
    i=1
  end
  
  while i<array.length do
    total = yield(total,array[i])
    i+=1
  end
  return total
end