exports.chop = (value, array, left_index = 0, right_index = array.length - 1) ->
    return -1 if left_index > right_index

    middle_index = Math.floor(left_index + (right_index - left_index) / 2)
    middle_value = array[middle_index]

    if middle_value == value
        return middle_index
    else if middle_value < value
        left_index  = middle_index + 1
    else
        right_index = middle_index - 1

    return arguments.callee(value, array, left_index, right_index)
