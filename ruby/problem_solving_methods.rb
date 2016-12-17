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


# # Bubble Sorted Method is array of ascending order that will compare numbers that in  accending order . It will compare items in the arrays that is less than the current number. If will swap current number with larger number. 
# step 1: define a method 
# step 2: pass array to the method
# step 3: find length of array 
# step 4: loop through the array 
# step 5: compare the adjacent numbers is greater than the current number
# step 6: if right number is less than the left number than swap
# step 7: else number is not swapped, than number is sorted, break the loop.


def bubble_sort(array) 
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

array1 = [1,45,99,2,87,100,3]
p bubble_sort(array1)
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

array1 = [1,45,99,2,87,100,3]
p bubble_sort(array1)