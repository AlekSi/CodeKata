def chop(value, array, left_index = 0, right_index = array.size - 1)
  return -1 if left_index > right_index
  
  middle_index = (left_index + (right_index - left_index) / 2).to_i
  middle_value = array[middle_index]
  
  if middle_value == value
    return middle_index
  elsif middle_value < value
    left_index  = middle_index + 1
  else
    right_index = middle_index - 1
  end
  return chop(value, array, left_index, right_index)
end
