function spinWords(string) {
    // split the string into individual words
    let indWords = string.split(' ');
    let result = '';
    // iterate through the list of words
    indWords.forEach(word => {
        if (word.length < 5) {
            result = result + word + ' ';
        } else {
            let reversedWord = word.split('').reverse();
            result = result + reversedWord.join('') + ' ';
        }
    });
    return result.trim();
}

console.log(spinWords('I am testing this'));