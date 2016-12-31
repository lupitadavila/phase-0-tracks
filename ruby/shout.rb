module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
  	words.upcase + "!!!!!!!!!!!"
  end
end

Shout
p Shout.yell_angrily("i am bored")
p Shout.yelling_happily("i love you")