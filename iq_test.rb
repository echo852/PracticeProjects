#This script finds the first one that is different in evenness and returns its position


def iq_test(numbers)
    intNums = numbers.split
    even_count = 0
    odd_count = 0
    intNums.each do |num|
        i = num.to_i 
        if i % 2 == 0
            even_count += 1
        else
            odd_count +=1
        end
    end
    
    ind_even = intNums.index {|num| num.to_i % 2 == 0}
    ind_odd = intNums.index {|num| num.to_i % 2 != 0}
    puts even_count > odd_count ? ind_odd+1 : ind_even+1
end

iq_test("1 2 2")
# should return 1
iq_test("2 4 7 8 10")
# should return 3