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

end

#####################################
# Driver Code

terrier = Puppy.new

terrier.fetch("ball")

terrier.speak(4)

puts "20 human years is #{terrier.dog_years(20)} dog years"

terrier.roll_over

terrier.sit_stand(3)