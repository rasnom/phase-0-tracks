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

=end

=begin
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

new_string = ""
index = 0
until index >= the_string.length
	new_string = new_string + the_string[index].next
	index = index + 1
end	

def encrypt_char (letter)
  letter.next
end	

=end	

def encrypt (the_string)
	encrypted = ""
	index = 0
	until index == the_string.length
		if the_string[index] == " "
			encrypted = encrypted + " "
		elsif the_string[index] == "z"
			encrypted = encrypted + "a"
		else	
			encrypted = encrypted + the_string[index].next
		end
		index += 1
	end
	return encrypted
end

def previous (char)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_index = alphabet.index(char) - 1
    return alphabet[new_index]
end


def decrypt (the_string)
	decrypted = ""
	index = 0
	until index == the_string.length
		if the_string[index] == " "
			decrypted = decrypted + " "
		else
			decrypted = decrypted + previous(the_string[index])
		end
		index += 1
	end
	return decrypted
end

=begin
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

puts encrypt ("elephant rhino")
	
# when you encrypte "mitsubishi honda" you move the letter forward for each 
# character, and then once that is returned you decrypte and undo
# that process by moving the character backwards
puts decrypt (encrypt("mitsubishi honda"))
		
=end 

puts "Would you like to encrypt or decrypt a password?"
process = gets.chomp
if process == "encrypt"
	puts "Enter password"
	password = gets.chomp
	puts encrypt(password)
elsif process == "decrypt"
	puts "Enter password"
	password = gets.chomp
	puts decrypt(password)
else
	puts "please pick encrypt or decrypt"
end
