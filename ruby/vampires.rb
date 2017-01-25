require 'date'

def questionnaire
	file = {}

	puts "What is your name?"
	file['name'] = gets.chomp

	puts "How old are you?"
	file['age'] = gets.chomp.to_i

	puts "What year were you born?"
	file['birth_year'] = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	file['order_bread'] = gets.chomp.downcase.include?("yes")

	puts "Would you like to enroll in the company's health insurance?"
	file['enroll'] = gets.chomp.downcase.include?("yes")

	puts "Please list each of your allergies (type \"done\" when finished)."
	
	file['sunshine_allergy'] = false
	begin
		allergy = gets.chomp.downcase
		if allergy == "sunshine" 
			file['sunshine_allergy'] = true
		end
	end until allergy == "done"

	puts "\n\n"
	return file
end


def age_right?(age,birth_year)
	current_year = Date.today.year

	return (birth_year + age == current_year || birth_year + age + 1 == current_year)
end


def evaluate_candidate(file)
	knows_age = age_right?(file['age'],file['birth_year'])

	result = "Results inconclusive"
	if file['sunshine_allergy']
		result = "Probably a vampire"
	elsif file['name'] == "Drake Cula" || file['name'] == "Tu Fang"
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

puts "How many employees will be processed?"
num_candidates = gets.chomp.to_i

pool = []

for index in 0...num_candidates
	file = questionnaire
	pool[index] = [file,evaluate_candidate(file)]
	puts pool[index][1] + "\n\n"
end

puts "\n"
puts "Actually, never mind. What do these questions have to do with anything?"
puts "Let's all be friends."