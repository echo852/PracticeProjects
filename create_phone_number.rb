# Accept an array of 10 numbers and return a string in the form of a phone number (###) ###-####

def create_phone_number (numbers)
    return "(#{numbers.slice(0,3).join}) #{numbers.slice(3,3).join}-#{numbers.slice(6,4).join}"
end

# running some tests
puts create_phone_number([1,2,3,4,5,6,7,8,9,0])