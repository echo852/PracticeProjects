function getCount(str) {
    var vowelsCount = 0;
    
    // enter your majic here
    let vowels = ['a','e','i','o','u'];
    vowels.forEach(vowel => {
        for (let i = 0; i < str.length; i++) {
            if (str.charAt(i) === vowel) {
                vowelsCount++;
            }
        }
    })

    return vowelsCount;
  }

  console.log(getCount('This is a test'));