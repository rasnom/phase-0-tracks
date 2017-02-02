
def search_array(array, integer)
  array.each_with_index do |item, index|
    if item == integer
      return index      
    end 
  end 
  return nil


end



arr = [2,33,4,5,9,2,112,23,43,4,45,6]









def fib(integer)
  

  if integer == 1
    fib_list = [0]

  elsif integer == 2
    fib_list = [0,1]

  else
    fib_list = [0, 1]
    counter = 3

    while counter <= integer
      fib_list << fib_list[counter-3] + fib_list[counter-2]
      counter += 1
    end
  end

  return fib_list
  
end



 p fib(100)








