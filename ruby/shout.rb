module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
  	words.upcase + "!!!!!!!!!!!"
  end
end

#p Shout.yell_angrily("i am bored")
#p Shout.yelling_happily("i love you")
class Adult
	include Shout
end

class Baby
	include Shout
end

baby = Baby.new
p baby.yell_angrily("wahhhhh")
p baby.yelling_happily("goo goo gah gah")

adult = Adult.new
p adult.yell_angrily("work sucks")
p adult.yelling_happily("I'm getting married")

