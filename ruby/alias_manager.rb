# def fakename(name)
# 	moniker = name.swap_first_and_last
# 	moniker.increment_vowels!
# end

def increment_vowels(char)
	case char
	when "A" 
		return "E"
	when "E" 
		return "I"
	when "I" 
		return "O"
	when "O" 
		return "U"
	when "U" 
		return "A"
	when "a" 
		return "e"
	when "e" 
		return "i"
	when "i" 
		return "o"
	when "o" 
		return "u"
	when "u" 
		return "e"
	else 
		return char
	end
end

def fake_name(real_name)
	moniker = real_name.split(' ').reverse.join(' ')
	moniker.split('').map{|char| increment_vowels(char)}.join('')
end

#puts fake_name "Felicia Torres"

monikers = {}
name = ""

until name == 'quit'
	puts "Enter a name (or 'quit')"
	name = gets.chomp
	monikers[name] = fake_name(name)
end

puts "\n"
monikers.each do |true_name, moniker|
	puts "#{true_name} was once know as #{moniker}."	
end
