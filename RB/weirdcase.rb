# Given a string, return the same string with even-indexed characters upper-cased, and odd-indexed characters lower-cased

def weirdcase (str)
    result = []
    str.chars.each_index { |index|
        if index.odd? == true
            result.push(str.chars[index].downcase)
        elsif index.even? == true
            result.push(str.chars[index].upcase)
        end
    }
    return result.join
end

# Testing testing
puts weirdcase("Test")
puts weirdcase("This is a test")
puts weirdcase("Writing out a longer sentence")