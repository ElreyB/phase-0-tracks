#6.2 Mandatory Pairing
#Elrey & Ally

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num)
    dog_age = num * 7
  end

  def mannequin_challenge
    puts "*stays still*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

# puppy = Puppy.new

# p puppy.fetch("ball")
# p puppy.speak(2)
# p puppy.roll_over
# p puppy.dog_years(3)
# p puppy.mannequin_challenge


class Dance

  def initialize
    puts "Initializing new dance instance..."
  end

  def leap(num)
    return "You leaped #{num} times!"
  end

  def partner(name1, name2)
    return "#{name1.capitalize} is partnered with #{name2.capitalize}."
  end

end

dance_instances = []
dance_leaps = []
dance_partners = []
for i in 1..50
  dance_instances << dance = Dance.new
  dance_leaps << dance.leap(4)
  dance_partners << dance.partner("Ally", "Elrey")
end

# p dance_instances
# p dance_leaps
# p dance_partners

dance_instances.each do |instance| 
  puts instance
  puts dance.leap(4)
  puts dance.partner("Ally", "Elrey")
end