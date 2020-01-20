# Your Code Here
def map(array)
  
  negs =[]
  newneg=0
  i = 0
  while i < array.length do
    newneg=yield(array[i])
    negs.push(newneg)
    i += 1
  end
  
  return negs
end

def reduce(array, vtest = nil)
  if vtest
  x = vtest
  i = 0
  else
  x = array[0]
  i = 1
  end 
  
  while i < array.length do
  
  x = yield(x, array[i])
  
  i +=1
  end
  return x
end