# def get_client_info
# 	ask for info and gets.chomp it
# 		name
# 		age
# 		number of children
# 		decor theme
# 		pets
# 		...
# 		...
# 	return a hash
# end

def get_client_info
	info = {}
	puts "Client Info Form:"
	puts "Full Name  "
	info[:name] = gets.chomp
	puts "Age  "
	info[:age] = gets.chomp.to_i
	puts "Number of Children "
	info[:children] = gets.chomp.to_i
	puts "Number and Type of Pets "
	info[:pets] = gets.chomp
	puts "Overall Decor Theme "
	info[:decor] = gets.chomp
	return info
end

# def ask_for_update
# 	case: ask which field want to update
# 		"none"
# 			done
# 		a field in the hash
# 			ask for the new data and gets.chomp
# 		else
# 			loop maybe?
# 	return updated (or not) hash
# end

def ask_for_update(client)
	puts "Select a field to update (or none)."
	puts client.keys
	choice = gets.chomp.to_sym
	if client.keys.include?(choice)
		if client[choice].is_a? Integer
			client[choice] = gets.chomp.to_i
		else
			client[choice] = gets.chomp
		end
	end
	return client
end

# driver code
# 
# get_client_info
# puts client_info
# update_client_info
# puts client_info

client_info = get_client_info
puts "\n\nClient Info : "
puts client_info 
puts "\n\n"
updated_info = ask_for_update(client_info)
puts "\n\nUpdated Client Info : "
puts updated_info 





