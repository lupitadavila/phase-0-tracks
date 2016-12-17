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

def fib_fibonacci(numbers)
	arr = [0,1] 
	sum = 0
	until arr.length == numbers
		#add last two numbers
		sum = arr[arr.length-1] + arr[arr.length-2]

		#push that sum to the array
		arr.push(sum)
	end
	arr
end
p fib_fibonacci(6)

check = fib_fibonacci(100)
puts check.last