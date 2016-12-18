# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
puts "iNvEsTiGaTiOn".swapcase

# "zom".squeeze
# => “zoom”
puts "zom".squeeze

# "enhance".center(20)
# => "    enhance    "
puts "enhance".center(20)

# "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
puts "Stop! You’re under arrest!".upcase

# "the usual".concat(" suspects")
#=> "the usual suspects"
puts "the usual" << " suspects"
puts "the usual".concat(" suspects")

# " suspects".prepend("the usual")
# => "the usual suspects"
puts " suspects".prepend("the usual")

# "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".slice(0..-2)

# "The mystery of the missing first letter".slice(1..-1)
# => "he mystery of the missing first letter"
puts "The mystery of the missing first letter".slice(1..-1)
puts "The mystery of the missing first letter".reverse.chop.reverse

# "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!".squeeze

# "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 = ASCII character code
puts "z".ord

# "How many times does the letter 'a' appear in this string?".count('a')
# => 4
puts "How many times does the letter 'a' appear in this string?".count('a')