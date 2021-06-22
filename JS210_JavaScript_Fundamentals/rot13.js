function rot13(string) {
  const LOWERLETTERS = "abcdefghijklmnopqrstuvwxyz";
  const UPPERLETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const ROT = 13;
  let rotStr = '';

  for (let i = 0; i < string.length; i += 1) {
    let currIdx = LOWERLETTERS.indexOf(string[i].toLowerCase());
    let rotIdx = currIdx + ROT;
    let ALPHABETLENGTH = 26;
  
    if (rotIdx >= ALPHABETLENGTH) {
      rotIdx = rotIdx - ALPHABETLENGTH;
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
