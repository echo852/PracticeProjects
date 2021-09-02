=begin
    Greed is a game played with 5 six-sided dice
    Three 1's => 1000 points
    Three 6's =>  600 points
    Three 5's =>  500 points
    Three 4's =>  400 points
    Three 3's =>  300 points
    Three 2's =>  200 points
    One   1   =>  100 points each (until it hits the triplet score)
    One   5   =>   50 point each (until it hits the triplet score)
    Given an array of 5 integers representing dice rolls, output the result
    If there are more than three integers that are the same, include the remaining to see if there is a single integer and add to the score
=end

def score (dice)
    counter = [0,0,0,0,0,0]

    dice.each { |x| 
        case x
        when 1
            counter[0] += 1
        when 2
            counter[1] += 1
        when 3
            counter[2] += 1
        when 4
            counter[3] += 1
        when 5
            counter[4] += 1
        when 6
            counter[5] += 1
        end
    }

    score = 0

    if counter[0] == 1
        score = score + 100
    elsif counter[0] == 2
        score = score + 200
    elsif counter[0] == 3
        score = score + 1000
    elsif counter[0] == 4 # include the score for having 3 plus 1 of the same
        score = score + 1100
    elsif counter[0] == 5 # include the triplet plus two
        score = score + 1200
    end


    if counter[4] == 1
        score = score + 50
    elsif counter[4] == 2
        score = score + 100
    elsif counter[4] == 3
        score = score + 500
    elsif counter[4] == 4 # include the score for having 3 plus 1 of the same
        score = score + 550
    elsif counter[4] == 5
        score = score + 600 # include the triplet plus two
    end

    if counter[1] >= 3
        score = score + 200
    end
    if counter[2] >= 3
        score = score + 300
    end
    if counter[3] >= 3
        score = score + 400
    end
    if counter[5] >= 3
        score = score + 600
    end

    return score
end

# always run your tests
puts score([2,3,4,6,2])
puts score([2,2,2,3,3])
puts score([2,4,4,5,4])
puts score([4,4,4,3,3])