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