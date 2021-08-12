// What it says on the box: Is it an isogram?
function isIsogram(str) {
    let lowerStr = str.toLowerCase();
    for (let i = 0; i < lowerStr.length; i++) {
        let currChar = lowerStr.charAt(i);

        let letterIndex = lowerStr.indexOf(currChar);
        let letterSearch = lowerStr.indexOf(currChar,(letterIndex+1));

        if (letterSearch != -1) {
            return false;
        }
    }
    return true;
}


console.log(isIsogram('that'));