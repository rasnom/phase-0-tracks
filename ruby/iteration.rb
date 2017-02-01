def status_update 
	puts "this is the status update"
	yield("called something")
	puts "all done"
end

status_update { |name| puts "a string #{name}"} 


