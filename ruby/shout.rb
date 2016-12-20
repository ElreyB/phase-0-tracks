# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + "😢 "
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + "😃 "
# 	end
# end

# p Shout.yell_angrily("Why is learn Ruby so hard")
# p Shout.yell_happily("Because learning is half the battle")

module Shout
	def yell_angrily(words)
		words + "!!!" + "😢 "
	end

	def yell_happily(words)
		words + "!!!" + "😃 "
	end
end

