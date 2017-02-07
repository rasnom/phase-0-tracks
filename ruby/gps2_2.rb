# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a Hash
  # split the string into an array, separate by " "
  # set default quantity
  # iterate through the array, with parameter |item|
  	# convert the item from a string to a symbol
  	# add item to the Hash as a key, with the default quantity as the value
  # print the list to the console using print list method (pass it the hash)
# output: the hash

# Method to add an item to a list
# input: list, item name, and optional quantity (default to default_quantity)
# steps: 
	# add key value pair of item and quantity to the list
# output: list

# Method to remove an item from the list
# input: list, item name
# steps: 
	# delete item from the list (use .delete method)
# output: list

# Method to update the quantity of an item
# input: list, item name, quantity (not optional)
# steps: 
	# set the element of the list with the item name to the quantity
# output: list

# Method to print a list and make it look pretty
# input: a hash of items and quantities
# steps: 
  # print a border made of "*"s
  # print a title
  # iterate over the hash, getting the items and quanities
    # convert each items/quantity to a string
    # print string to screen
# output: (implicit nil)