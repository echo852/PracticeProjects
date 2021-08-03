
function isIsogram(str) {
    let lowerStr = str.toLowerCase();
    for (let i = 0; i < lowerStr.length; i++) {
        let currChar = lowerStr.charAt(i);
        //console.log(currChar);
        let letterIndex = lowerStr.indexOf(currChar);
        let letterSearch = lowerStr.indexOf(currChar,(letterIndex+1));
        //console.log(letterIndex);
        //console.log(letterSearch);
        if (letterSearch != -1) {
            return false;
        }
    }
    return true;
}


console.log(isIsogram('that'));