# Given a string, count the numbers of characters

def count_chars (str)
    result = {}
    str.chars.each {|letter|
        if result[letter] != nil
            result[letter] += 1
        else
            result[letter] ||= 1
        end
    }
    return result
end

# test test
puts count_chars("This is a test")