# Your Code Here
def map(source)
  return_array = []
  for i in source do
    return_array.push(yield(i)
  end
  return_array
end