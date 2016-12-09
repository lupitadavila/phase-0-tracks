## Encrypt method
# Create new variable to store encrypted string
# For each character in input string
# - Take character and use .next method
# - append character.next to encrypted variable string

def encrypt(password)
	index = 0
	encrypted_pass=""

	while index < password.length
		if password[index] == "z"
			encrypted_pass += "a"
		else
			encrypted_pass+= password[index].next
		end
		index+=1
	end

	encrypted_pass
end


# Decrypt
# Create new variable to store decrypted string
# Create alphabet string from index references
# For each character in input string
# - Take character and find index in alphabet
# - Subtract that index by 1 to get previous letter
# - append new letter to decrypted variable string

def decrypt(secret_password)
	i = 0 # index to loop through string
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	decrypted_pass=""
	new_letter_index = 0

	while i < secret_password.length
		new_letter_index = alphabet.index(secret_password[i]) - 1
		decrypted_pass += alphabet[new_letter_index]
		i+=1
	end

	decrypted_pass
end

#puts encrypt("abc") #should return "bcd"
#puts encrypt("zed") #should return "afe"
#puts decrypt("bcd") #should return "abc"
#puts decrypt("afe") #should return "zed"


#puts decrypt(encrypt("swordfish")) 
# This method call works because encrypt() returns
# a string then decrypt takes that string and inputs 
# it to its method


## DRIVER CODE

puts "Would you like to encrypt or decrypt a password?"
answer = gets.chomp

puts "What is your password?"
password = gets.chomp

if answer == "encrypt"
	puts encrypt(password)
elsif answer == "decrypt"
	puts decrypt(password)
end