require_relative 'wordgame'

game = WordGame.new

puts "Shall we play a game?"
sleep(1.5)
puts "Of course we shall. Enter a secret word"

game.new_round(gets.chomp)

puts "Now guess letters in the word #{game.progress}."

while game.keep_playing?
	guess = gets.chomp
	game.guess?(guess)
	puts game.progress
	puts game.message
end
