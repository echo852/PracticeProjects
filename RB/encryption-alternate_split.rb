# Given a string (S) and an Integer (N), concatenate all odd-indexed characters of String N times
# I had to sketch this one out on paper to visualize

def encrypt (s,n)
    result = nil
    if n <= 0
        result = s
    end
    n.times do
        i = 0
        odds = []
        evens = []
        result ||= s
        result.chars.each do
            odds.push(result[i+1])
            evens.push(result[i])
            i += 2
        end
        result = odds.join + evens.join
    end
    return result
end

def decrypt (encrypted_text,n)
    result = nil
    n.times do
        i = 0
        j = encrypted_text.length / 2
        loop_array = []
        result ||= encrypted_text
        result.chars.each do
            while i < encrypted_text.length / 2
                loop_array.push(result[j])
                loop_array.push(result[i])
                i += 1
                j += 1
            end
            result = loop_array.join
        end
    end

    if n <= 0
        return encrypted_text
    elsif encrypted_text.length % 2 != 0
        return result + encrypted_text.chars.pop
    else
        return result
    end
end

# run some tests
puts encrypt("This is a test!",1)
puts encrypt("This is a test!",2)
puts encrypt("This is a test!",3)
puts encrypt("This is a test!",4)

# run some more tests
puts decrypt("hsi  etTi sats!", 1)
puts decrypt("s eT ashi tist!", 2)
puts decrypt(" Tah itse sits!", 3)
puts decrypt("This is a test!", 4)