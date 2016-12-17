def search_array(array, numbers)

  index= 0
  answer = nil;
  
  while index < array.length && answer==nil
    if array[index] == numbers
      #return index
      answer = index
    else
      #return nil
      answer = nil
    end
    index +=1
  end
answer
end

arr = [42,89,23,1]

p search_array(arr,1)
p search_array(arr,24)

