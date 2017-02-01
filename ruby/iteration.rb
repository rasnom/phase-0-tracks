def status_update 
	puts "this is the status update"
	yield("called something")
	puts "all done"
end

# status_update { |name| puts "a string #{name}"} 


colors = ['red','blue','green','periwinkle']

books = {fiction: ['The Martian','Age of Innocense'],
					nonfiction: ['Encyclopedia','Book on Ruby']}

colors.each { |the_color| puts "this table color is #{the_color}"}

books.each { |style, titles| 
	puts "my favorite #{style} book is #{titles[0]}"}

colors.map! do |the_color|
	"dark " + the_color 
end
puts colors

puts books.map {|style, titles| titles.reverse}