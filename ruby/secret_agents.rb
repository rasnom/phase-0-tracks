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
	encrypted = ""
	for index in (0...the_string.length)
		if the_string[index] == " "	
			encrypted += the_string[index]
		else
			encrypted += encrypt_char(the_string[index])
		end
	end
	return encrypted
end


def encrypt_char (letter)
  letter.next
end

puts encrypt ("elephant rhino")



