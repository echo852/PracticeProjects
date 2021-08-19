# Given an array of integers, give the sum of the two smallest
def sum_two_smallest_numbers (numbers)
    numbers.sort!
    return numbers[0]+numbers[1]
end


# Test test
puts sum_two_smallest_numbers([5, 8, 12, 18, 22])