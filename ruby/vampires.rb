def questionnaire
	file = {}

	puts "What is your name?"
	file['name'] = gets.chomp

	puts "How old are you?"
	file['age'] = gets.chomp

	puts "What year were you born?"
	file['birth_year'] = gets.chomp

	puts "Our company cafeteria serves garlic bread. Should we order 
				some for you?"
	file['order_bread'] = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	file['enroll'] = gets.chomp

	return file
end

def evaluate_candidate(file)
	
end

f = questionnaire
puts f['name'] + "!!!"