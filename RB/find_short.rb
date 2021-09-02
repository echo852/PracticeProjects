#Given a string of words, find the shortest one and return the length
def find_short(s)
    string_by_length = s.split.sort! {|a,b| a.length <=> b.length}
    return string_by_length[0].length
end

puts find_short("This is a test")