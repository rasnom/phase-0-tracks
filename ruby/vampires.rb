
require 'date'

def questionnaire
	file = {}

	puts "What is your name?"
	file['name'] = gets.chomp

	puts "How old are you?"
	file['age'] = gets.chomp

	puts "What year were you born?"
	file['birth_year'] = gets.chomp

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	file['order_bread'] = gets.chomp.downcase.include?("yes")

	puts "Would you like to enroll in the company's health insurance?"
	file['enroll'] = gets.chomp.downcase.include?("yes")

	return file
end


def age_right?(age,birth_year)
	current_year = Date.today.year

	return birth_year + age == current_year || 
					birth_year + age == current_year - 1
end


def evaluate_candidate(file)
	knows_age = age_right?(file['age'],file['birth_year'])
	
	result = "Results inconclusive"
	if file['name'] == "Drake Cula" || file['name'] == "Tu Fang"
		result = "Definitely a vampire"
	elsif knows_age
		if file['order_bread'] || filel['enroll']
			result = "Probably not a vampire"
		end
	elsif !file['order_bread'] && !file['enroll']
		result = "Almost certainly a vampire"
	end

	return result
end		
	


f = questionnaire

puts age_right?(f['age'],f['birth_year'])

puts evaluate_candidate(f)