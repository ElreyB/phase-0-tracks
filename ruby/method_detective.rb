# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
p "Elrey C. Belmonti".swapcase

puts "-----------"

p "zom".insert(1, 'o')
# => “zoom”
p "Flower".insert(6, ' Power')

puts "-----------"

p "enhance".center(15)
# => "    enhance    "
p "I am in the center".center(30)

puts "-----------"

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p "i want to say something really important!!!!".upcase

puts "-----------"

p "the usual".insert(-1, " suspects")
#=> "the usual suspects"
p "Used negitive to insert".insert(-10, "number ")

puts "-----------"

p " suspects".insert(0, "the usual")
# => "the usual suspects" 
p " idea".insert(0, "you get").insert(-6, " the")

puts "-----------"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
p "Y of my name is gone, Elrey".chop

puts "-----------"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4