// Given a string, split it in to even pairs.
// If uneven, put _ on the end of the second
function solution (str) {
    let newStr = '';
    let output = [];
    if (str.length % 2 != 0) {
        newStr = str + '_';
    } else {
        newStr = str;
    };

    for (let i = 0; i < newStr.length; i+=2) {
        output.push(newStr.substring(i,(i+2)));
    };
    console.log(output);
}

solution('test');