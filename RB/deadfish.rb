# Parse and run Deadfish where:
=begin
    i => increments the value (initially 0)
    d => decrements the value
    s => squares the value
    o => outputs the value into a return array
=end

def parse (str)
    result = []
    i = 0

    str.chars.each { |x|
        case x
        when "i"
            i += 1
        when "d"
            i -= 1
        when "s"
            i = i * i
        when "o"
            result.push(i)
        end
    }
    return result
end

# Gotta test your code
print parse("ooo")
print parse("iiisdoso")