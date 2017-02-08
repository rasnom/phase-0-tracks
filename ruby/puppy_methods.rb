class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(count)
  	count.times {puts "Woof!"}
  end

  def dog_years(human_years)
  	human_years / 7
  end

  def roll_over
  	puts "*rolls over*"
  end

  def sit_stand(how_long_to_sit)
  	how_long_to_sit.times { puts "sitting..."}
  	puts "standing"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end
end

class Kitty

	def initialize
		puts "Initializing kitty instance..."
	end

	def purr
		puts "*purring*"
	end

	def rumpus(int)
		int.times {puts "Kitten running about like a loon"}
		return "chaos"
	end

	def push_cup(int)
		if int == 1
			puts "Kitten pushed #{int} cup off the table."
		else
			puts "Kitten pushed #{int} cups off the table."
		end
	end

end

#####################################
# Puppy Driver Code

# terrier = Puppy.new
# terrier.fetch("ball")
# terrier.speak(4)
# puts "20 human years is #{terrier.dog_years(20)} dog years"
# terrier.roll_over
# terrier.sit_stand(3)

# Kitten Driver Code

kitties = []

50.times do
	kitties << Kitty.new
end

kitties.each do |cat|
	cat.rumpus(3)
	cat.push_cup(1)
	cat.purr
end