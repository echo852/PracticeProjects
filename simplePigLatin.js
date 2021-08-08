function pigIt(str) {
    // split the phrase into individual words
    let indWords = str.split(' ');

    let result = '';

    // for each word...
    for (let i = 0; i < indWords.length; i++) {
        // drop & move the first letter to the end of the word, and add on 'ay'
        let firstChar = indWords[i].substring(0,1);
        // if the first character is not an alphanumeric value, don't add on 'ay'
        if (/^\W/g.test(firstChar)) {
            result = result + firstChar;
        } else { 
            let restOfWord = indWords[i].substring(1);
            result = result + restOfWord + firstChar + 'ay' + ' ';
        }
    }
    // send out the result, and get rid of the white space at the end
    return result.trim();
}

console.log(pigIt('test phrase !'));