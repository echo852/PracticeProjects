# Given an integer, square each digit of the integer, and concate them (eg. 9119 should return 811181)

def square_digits num
    result = ''
    num.digits.reverse.each {|i| result.concat((i*i).to_s)}
    return result.to_i
end

# run some tests
print square_digits(354)