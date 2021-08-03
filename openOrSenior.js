function openOrSenior(data) {
    let strList = [];
    data.forEach(dataPair => {
        if (dataPair[0] < 55) {
            strList.push("Open");
        } else if (dataPair[0] >= 55 && dataPair[1] > 7) {
            strList.push("Senior");
        } else if (dataPair[0] >= 55 && dataPair[1] <= 7) {
            strList.push("Open");
        }
    })
    return strList;
}

console.log(openOrSenior([[18, 20],[45, 2],[61, 12],[37, 6],[21, 21],[78, 9]]));