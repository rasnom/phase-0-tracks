
def search_array(array, integer)
  array.each_with_index do |item, index|
    if item == integer
      return index      
    end 
  end 
  return nil


end




arr = [2,33,4,5,9,2,112,23,43,4,45,6]



puts search_array(arr,4)







