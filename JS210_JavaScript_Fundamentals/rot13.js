// take an input string and rotate each character 
// output the new string rotated

// if the character is a - z || A - Z rotate 13 places
  // preserve case
// if not an alphabet character do not rotate
  // do not change non alphabet characters
 
// if upperCase letter set uppcase to true, else keep false
// use a array to find alphabet values
// create newStr
// iterate over input string
// find current position of char in LETTERS
// +13 and add that char to newStr
// + 13 places to find the rotated letter
// if + 13 goes over 26 
  // find the difference between num and 26
    // e.g. starting from letter y, y = 25
      // 25 + 13 = 38
      // 38 - 26 = 12

      // t = 20
      // 20 + 13 = 33
      // 33 - 26 = 7
// if not in letters add without changing

function rot13(string) {
  const LOWERLETTERS = "abcdefghijklmnopqrstuvwxyz";
  const UPPERLETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  const ROT = 13;
  let rotStr = '';

  for (let i = 0; i < string.length; i += 1) {
    let currIdx = LOWERLETTERS.indexOf(string[i].toLowerCase());
    let rotIdx = currIdx + ROT;
    
    if (rotIdx >= 26) {
      rotIdx = rotIdx - 26;
    }

    if (UPPERLETTERS.includes(string[i])) {
      rotStr += UPPERLETTERS[rotIdx];
    } else if (LOWERLETTERS.includes(string[i])){
      rotStr += LOWERLETTERS[rotIdx];
    } else {
      rotStr += string[i];
    }

  }

  return rotStr;
}

console.log(rot13('Teachers open the door, but you must enter by yourself.'));

// logs:
// Grnpuref bcra gur qbbe, ohg lbh zhfg ragre ol lbhefrys.
