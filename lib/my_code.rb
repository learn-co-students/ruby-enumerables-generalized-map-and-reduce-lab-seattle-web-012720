def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  new
end 

def reduce(source_array, starting_point=nil)
  if starting_point
    newest = starting_point
    i = 0
    while i < source_array.length do
      newest = yield(newest, source_array[i])
      i+=1
    end
  else
    newest = source_array[0]
    i = 1
    while i < source_array.length do
      newest = yield(newest, source_array[i])
      i+=1
    end
  end
newest
end