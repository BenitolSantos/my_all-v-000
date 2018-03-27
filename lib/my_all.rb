require 'pry'

#.all? checks if there is a false or nil element in the array.

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i]) #or .push, in this case shove is being used.
    i = i + 1 #i += does the same thing. Use this if it's easier for you.
  end

  if block_return_values.include?(false)
    false
  else
    true
end
