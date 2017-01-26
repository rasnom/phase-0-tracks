=begin
Were making a function caled "encrypt" 
encrypt(the_string) 
for loop on the letters in the_string
check if each letter is a space
if not increment it one and then 
return the updated letter

decrypt (the_string)
	start by running index on the letters in 
	the the_string

	subtract 1 from result of each letter

	return the letters that coincide with that index
=end

def encrypt (the_string)
	for index in (0...the_string.length)
		puts the_string[index] 
	end
end
encrypt ("elephant")

