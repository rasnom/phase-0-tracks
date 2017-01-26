
puts "What is the hamster's name?"
name = gets.chomp

puts "What is the volume level?"
level = gets.chomp.to_i

puts "What is the fur color?"
color = gets.chomp

puts "Is it a good candidate for adoption?"
adoption = gets.chomp

puts "What is it's age?"
age = gets.chomp
if age == ""
	age = nil
else
	age = age.to_i
end

if age != nil 
	puts "#{name} is a #{color} hamster of #{age} years."
	puts "it is #{level} loud and in the owners opinion, #{adoption} for adoption"
else
	puts "you have an ageless hamster!"
end





