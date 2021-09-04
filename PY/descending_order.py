# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

def descending_order(num):
    listnum = []
    for digit in str(num):
        listnum.append(digit)
    listnum.sort(reverse=True)
    final = ''.join(listnum)
    return int(final)


# testing testing
descending_order(12345)