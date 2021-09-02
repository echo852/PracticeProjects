# Same as weirdcase.rb, but index resets to 0 for each word

def weirdcase (str)
    words = str.split(' ')
    result = []
    words.each { |w|
        w.chars.each_index { |index| 
            if index.odd? == true
                result.push(w.chars[index].downcase)
            elsif index.even? == true
                result.push(w.chars[index].upcase)
            end
        }
        result.push(' ')
    }
    return result.join.strip
end

# Testing testing
puts weirdcase("Test")
puts weirdcase("This is a test")
puts weirdcase("Writing out a longer sentence")