// 1. Ddaaiillyy ddoouubbllee
// function crunch(string) {
//   let newStr = '';

//   for (let i = 0; i < string.length; i += 1) {
//     if (newStr[newStr.length - 1] !== string[i]) {
//       newStr += string[i]
//     }
//   }
//   return newStr
// }

// function crunch(string) {
//   return string.replace(/(.)\1+/g, '$1');
// }

// console.log(crunch('ddaaiillyy ddoouubbllee'));
// '$1' acts as a placeholder for the first capture group
// (.) first capture group
// . matches any character
// \1 matches the same text as most recently matched by the 1st capture group
// + matches the previous token between one and unlimited tmes, as many times as possible
// /g global, all matches (don't return after the first match)
// Match 1 = 4444, capture group 1 = 4. 
// 4444 gets replaced to 4, as $1 is a placeholder for the group 1 value.
// Match 2 = cc, capture group 1 = c. 
// cc gets replaced to c, as $1 is a placeholder for the group 1 value.

// 2. Bannerizer
// function logInBox(string) {
//   let horizontalLineLength = string.length + 2;
//   let horizontalLine = '+';
//   let horizontalLineSpaces = '';

//   for (let i = 1; i <= horizontalLineLength; i += 1){
//     horizontalLine += '-';
//     horizontalLineSpaces += ' ';
//   }

//   horizontalLine += '+';

//   console.log(horizontalLine);
//   console.log('|' + horizontalLineSpaces + '|');
//   console.log('|' + ' ' + string + ' ' + '|');
//   console.log('|' + horizontalLineSpaces + '|');
//   console.log(horizontalLine);
// }

// logInBox('To boldly go where no one has gone before.');

// 3. Stringy Strings
// function stringy(number) {
//   let str = '';
//   let one = true;
//   let zero = false;

//   for (let i = 0; i < number; i += 1) {
//     if (one) {
//       str += '1';
//       one = false;
//       zero = true;
//     } else if (zero) {
//       str += '0';
//       one = true;
//       zero = false;
//     }
//   }

//   return str;
// }

// console.log(stringy(4));

// 4. Fibonacci Number Location by Length
// function findFibonacciIndexByLength(number) {
//   let currentNum = 1n;
//   let previousNum = 1n;
//   let index = 2n;
//   let temp = 0n;

//   while (String(currentNum).length !== number) {
//     temp = currentNum;
//     currentNum += previousNum;
//     previousNum = temp;
//     index += 1n;
//   }
//   return index;
// }

// console.log(findFibonacciIndexByLength(10));

// 5. Right Triangles
// function triangle(size) {
//   let space = ' ';
//   let star = '*';
//   let spaces = (size - 1)

//   for (let i = 1; i <= size; i += 1) {
//     console.log(`${space.repeat(spaces)}${star.repeat(i)}`);
//     spaces -= 1;
//   }

// }

// triangle(9);

// 6. Madlibs
// let readlineSync = require('readline-sync');
// let noun = readlineSync.question('Enter a noun: ')
// let verb = readlineSync.question('Enter a verb: ')
// let adjective = readlineSync.question('Enter a adjective: ')
// let adverb = readlineSync.question('Enter a adverb: ')

// console.log(`Do you ${verb} your ${adjective} ${noun} ${adverb}? That's hilarious!`);

// 7. Double Doubles
// function twice(number) {
//   let midPoint = String(number).length / 2;
//   let left = String(number).substring(0, midPoint)
//   let right = String(number).substring(midPoint)
  
//   if (left == right) {
//     return number;
//   } else {
//     return number * 2;
//   }
// }

// console.log(twice(37));

// 8. Grade Book
// function getGrade(score1, score2, score3) {
//   let average = (score1 + score2 + score3) / 3;

//   if (average >= 90) {
//     return 'A';
//   } else if (average >= 80) {
//     return 'B';
//   } else if (average >= 70) {
//     return 'C';
//   } else if (average >= 60) {
//     return 'D';
//   } else {
//     return 'F';
//   }
// }

// console.log(getGrade(50, 50, 95));

// 9. Clean Up the Words
// function cleanUp(string) {
//   return string.replace(/[^a-zA-Z]/g, ' ');
// }

// console.log(cleanUp("---what's my +*& line?"));

// 10. What Century is That
// function century(year) {
//   centuryNum = Math.ceil(year / 100);
//   stringYear = String(centuryNum);
//   endPair = stringYear.substring(stringYear.length - 2);
//   endNumberChar = stringYear.substring(stringYear.length - 1);

//   if (endPair === '11' || endPair === '12' || endPair === '13') {
//     console.log(`${centuryNum}th`);
//   } else if (endNumberChar === '1') {
//     console.log(`${centuryNum}st`);
//   } else if (endNumberChar === '2') {
//     console.log(`${centuryNum}nd`);
//   } else if (endNumberChar === '3') {
//     console.log(`${centuryNum}rd`);
//   } else {
//     console.log(`${centuryNum}th`);
//   }
// }

// century(2965);        // "30th"
// century(256);         // "3rd"
// century(5);           // "1st"
// century(10103);       // "102nd"
// century(11201);       // "113th"
