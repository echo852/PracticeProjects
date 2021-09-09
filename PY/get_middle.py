# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

def get_middle(word):
    wordlength = len(word)
    middle = int(wordlength / 2)
    if wordlength % 2 == 0:
        return word[middle-1:middle+1]
    else:
        return word[middle]


# tests!
print(get_middle("test") == "es")
print(get_middle("testing") == "t")
print(get_middle("middle") == "dd")
print(get_middle("A") == "A")
print(get_middle("of") == "of")