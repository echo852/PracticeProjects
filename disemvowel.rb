# Straightforward request!  Remove all vowels from a given string, not including y

def disemvowel (str)
    return str.gsub!(/[aeiouAEIOU]/,'')
end

# testing testing
puts disemvowel("This is a test")