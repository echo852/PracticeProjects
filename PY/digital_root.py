# Digital root is the recursive sum of all the digits in a number.
# Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.

def digital_root(n):
    sum = 0
    for digit in str(n):
        sum += int(digit)
    while sum > 9:
        stored = str(sum)
        sum = 0
        for digit in stored:
            sum += int(digit)
    return(sum)



# run those tests!
print(digital_root(123456789123456))