function alphabetPosition(text) {
    // let's use unicode characters instead of entering an entire alphabet
    let unicodeConvInt = 96;

    let str = text.toLowerCase();
    let finalStr = '';

    for (let i = 0; i < str.length; i++) {
        let unicodeVal = str.charCodeAt(i);
        let convNum = unicodeVal - unicodeConvInt;
        if (convNum > 26 || convNum < 1) {
            finalStr = finalStr;
        } else {
            finalStr = finalStr + ' ' + convNum;
        }
    }
    return finalStr.trim();
  }

  console.log(alphabetPosition('test'));