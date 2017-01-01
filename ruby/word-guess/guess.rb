# Word guessing game

class WordGuess
	#getter
	attr_reader :num_of_guesses, :board_array, :word_array, :is_over
	#no attr_accessor for now

	#### Method initialize word
	# @word_array - word and sets it as array
	# @board_array - initialzie empty board array the same length as word
	# @guesses - array of guesses
	# @num_of_guesses - total number of guesses set to 0 by default
	# @is_over - true or false if game is over or not

	def initialize(word)

		@word_array = word.split('')
		@board_array = []
		@guesses = []

		#Set board
		@word_array.length.times do
			@board_array << "_"
		end

		@num_of_guesses = 0
		@is_over = false

	end

	#### Method guess_letter?
	#Searches for letter in array, if found, mark board
	#Returns true or false if letter is found
	def guess_letter?(letter)

		#Add 1 to the total number of guesses in game IF not already guessed (in the guesses array)
		if @guesses.index(letter) == nil
			@guesses << letter
			@num_of_guesses += 1
		end

		#If the letter exists (aka returns valid index)
		# 1. Loop through letters in word and compare to the guessed letter
		# 2. If guessed letter = original letter in word, set board = to letter in that index
		# 3. Return True
		#Else if the letter does not exist in word array
		# 1. Return False
		if @word_array.index(letter)
			index = 0
			@word_array.each do|i|
				if letter == i
					@board_array[index] = letter
				end
				index+=1
			end
			true
		else
			false
		end
	end


	#### Method game_over?
	#Check if game is over, return true or false
	def game_over?

		#If the number of guesses is greater or equal to the word length
		# 1. Game is over, let user know they made too many guesses
		# 2. @is_over = true
		#Elsif the board and the word arrays are equal to each other
		# 1. Game is over, player won, let user know
		# 2. @is_over = true
		#Else
		# 1. @is_over = false

		if @num_of_guesses >= @word_array.length
			puts "Too many guesses! Game over."
			@is_over = true

		elsif @word_array.join == @board_array.join
			puts "You won the game! Game over."
			@is_over = true
		else
			@is_over = false
		end
	end

	#Method print_board
	# Prints board with spaces in between each character
	def print_board
		@board_array.each do |char|
			print "#{char} "
		end
		puts ""
		@board_array
	end

end

# --------------------- DRIVER CODE

puts "\n***************************************\n\nWelcome to the Word Guessing Game!\n\n***************************************\n"
puts "\nPlayer 1, please enter your word:\n"
word = gets.chomp
puts "Awesome, Player 2 will have #{word.length} guesses\nRepeated guesses will not be counted against them.\n\n"
game = WordGuess.new(word)
guess = ""

while (!game.game_over?)
	game.print_board
	puts "\nPlayer 2, guess a letter!"
	guess = gets.chomp
	if game.guess_letter?(guess)
		puts "'#{guess}' is correct!"
	else
		puts "Incorrect guess!"
		puts "Your current number of guesses = "+ game.num_of_guesses.to_s + "\n"
	end
end