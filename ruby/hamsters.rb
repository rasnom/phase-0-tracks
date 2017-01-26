def questions 
	puts "What is the hamster's name?"
	name = gets.chomp

	puts "What is the volume level?"
	level = gets.chomp

	puts "What is the fur color?"
	color = gets.chomp

	puts "Is it a good candidate for adoption?"
	adoption = gets.chomp

	puts "What is it's age?"
	age = gets.chomp

	if age == ""
		age = nil
	end
end

questions




