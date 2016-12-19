# next_vowel method
# takes in a vowel character string
# returns the next vowel character string
def next_vowel(vowel)
	vowels_library = ["a","e","i","o","u"] #create array of vowels
	next_v = "" #initiate variable to store next vowel

	#for each letter in the vowel library
	vowels_library.each do|letter|
		#check if the vowel is "u" and set to "a"
		if vowel == "u"
			next_v = vowels_library[0]
			break
		#else if not the last letter in array set equal to next letter in array
		elsif letter == vowel
			next_v = vowels_library[vowels_library.index(vowel)+1]
		end
	end
	next_v
end

# is_vowel? method
# Check if letter is a vowel
# return boolean (true or false)
def is_vowel?(letter)
	vowels = ["A","a","E","e","I","i","O","o","U","u"] #store lower and uppercase vowels in array
	if vowels.include?(letter) #check if array vowels includes letter inputed in method
		is_vowel = true
	else
		is_vowel = false
	end
	is_vowel
end

# is_lower? method
# Check if a letter is lowercase
# return boolean (true or flase)
def is_lower?(letter)
    letter != letter.upcase #if letter is not uppercase return true, else return false
end

#name_swap method
#take full name and swap first and last name
def name_swap(full_name)
	swapped = full_name.split(' '); #split name into array by empty space
	# set first element to second and second to first
	swapped[0], swapped[1]= swapped[1], swapped[0]
	#Join string back to one full name
	swapped.join(' ')
end

def create_alias(name) #returns alias (string)
	arr = name_swap(name).split('') #split the name into array of characters
	new_alias =[] #initiate new array to store alias

	#For each letter in the character array
	arr.each do|letter|
		if letter == " " #check if letter is empty space and keep it
			new_alias << letter
		elsif is_vowel?(letter) #The letter is a vowel
			if is_lower?(letter) #check if letter is lowercase
				#use next vowel function and store in new array
				new_alias << next_vowel(letter)
			else
				#manipulate case before and after next_vowel function
				#and store in new array
				new_alias << next_vowel(letter.downcase).upcase 
			end
		else #The letter is not a vowel therefore a constant
			if is_vowel?(letter.next) # If the next letter is vowel
				new_alias << letter.next.next #change character to next in alphabet twice
			else #if next letter is not vowel
				new_alias << letter.next #change letter to next in alphabet
			end
		end
	end
	new_alias.join('')
end

# should be "Vussit Gimodoe"
p create_alias("Felicia Torres")
