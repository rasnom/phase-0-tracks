
#Release 0

arr = [2,33,4,5,9,2,112,23,43,4,45,6]


def search_array(array, integer)
  array.each_with_index do |item, index|
    if item == integer
      return index      
    end 
  end 
  return nil


end


p search_array(array,3)






#Release 1

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











#Release 2

#def bubble_sort(array)
  #while the entire array is not sorted 
    #Compare first element with second
      #Swap if out of order
    #Move to next comparison
      #Swap


array = [2,3,1,3,4,6,5,3,8,9,64,3,5,67,3]

def bubble_sort(array)
  
  i_end = array.length-1 
  while i_end > 0 
    i = 0

    while i < i_end
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
      i += 1
    end  

    i_end -= 1
  end

return array

end


p bubble_sort(array)































