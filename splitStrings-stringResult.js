function solution (str) {
    let newStr = '';
    if (str.length % 2 != 0) {
        newStr = str + '_';
    } else {
        newStr = str;
    }

    for (let i = 0; i < newStr.length; i+=2) {
        let twoStr = '';
        twoStr = newStr.substring(i,(i+2));
        console.log(twoStr);
    }
}

solution('testing');