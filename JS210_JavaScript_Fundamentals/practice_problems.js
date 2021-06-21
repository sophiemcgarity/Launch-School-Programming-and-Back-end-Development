// 7. Prime Check

// function isPrime(num) {
//   if (num <= 1 || (num > 2 && num % 2 === 0)) {
//     return false;
//   }

//   let divisor = 3;

//   while(divisor < num) {
//     if (num % divisor === 0) {
//       return false;
//     }

//     divisor += 2;
//   }

//   return true;
// }

// 12. Goldbach Numbers

// function checkGoldbach(expectedSum) {
//   if (expectedSum % 2 === 1 || expectedSum < 4) {
//     console.log(null);
//     return;
//   }

//   for (let firstNumber = 2; firstNumber < expectedSum; firstNumber += 1) {
//     let secondNumber = expectedSum - firstNumber

//     if (firstNumber > secondNumber) {
//       break;
//     }

//     if (isPrime(firstNumber) && isPrime(secondNumber)) {
//       console.log(firstNumber, secondNumber);
//     }
//   }
// }

// checkGoldbach(3);

//  13. Pattern Generation


// 14. Index of Substring
// function indexOf(firstString, secondString) {
//   let limit = firstString.length - secondString.length;

//   for(let indexFirst = 0; indexFirst <= limit; indexFirst += 1) { 
//     let matchCount = 0;

//     for (let indexSecond = 0; indexSecond < secondString.length; indexSecond += 1) {
//       if (firstString[indexFirst + indexSecond] === secondString[indexSecond]) {
//         matchCount += 1;
//       } else {
//         break;
//       }
//     }

//     if (matchCount === secondString.length) {
//       return indexFirst;
//     }
//   }

//   return -1;
// }

// console.log(indexOf('Some strings', 'st'));

// function lastOf(firstString, secondString) {
//   let limit = firstString.length - secondString.length;

//   for (let indexFirst = limit; indexFirst >= 0; indexFirst -= 1) {
//     let matchCount = 0;

//     for (let indexSecond = 0; indexSecond < secondString.length; indexSecond += 1){
//       if (firstString[indexFirst + indexSecond] === secondString[indexSecond]) {
//         matchCount += 1
//       } else {
//         break;
//       }
//     }

//     if (matchCount === secondString.length) {
//       return indexFirst;
//     }
//   }

//   return -1;
// }

// lastIndexOf('Some strings', 's'); 

// 15. Trimming Spaces
// function trim(string) {
//   let frontTrim = 0;
//   let backTrim = 0;
//   let stripString = '';

//   for(let i = 0; i < string.length; i += 1){
//     if (string[i] !== ' '){
//       break;
//     }
//     if (string[i] === ' ') {
//       frontTrim += 1;
//     }
//   }

//   for(let i = string.length - 1; i > 0; i -= 1){
//     if (string[i] !== ' '){
//       break;
//     }
//     if (string[i] === ' ') {
//       backTrim += 1;
//     }
//   }

//   for(let i = frontTrim; i <= (string.length - backTrim); i += 1){
//     stripString += string[i];
//   }
  
//   return stripString;
// }

// console.log(trim('  a b c  '));

//  16. Splitting a String
// function splitString(string, delimiter) {
//   if (delimiter === undefined) {
//     console.log('ERROR: No delimiter');
//     return;
//   }

//   let tempStr = '';
//   for (let i = 0; i <= string.length; i += 1) {
//     if (string[i] === delimiter) {
//       console.log(tempStr);
//       tempStr = '';
//     } else if (delimiter === '') {
//       console.log(string[i]);
//     } else {
//       tempStr += string[i];
//     }
//   }

//   if (tempStr) {
//     console.log(tempStr);
//   }
// }

// splitString('hello', '');

// Built-in Method
// let str = 'We put comprehension and mastery above all else';

// console.log(str.split(' and'));

// 17. Repeating Strings
// const isCount = value => Number.isInteger(value) && value >= 0;
// function repeat(string, times) {
//   if (!isCount(times)) {
//     return undefined;
//   } 

//   let newStr = '';

//   for (let i = 0; i < times; i += 1) {
//     newStr += string;
//   }
//   return newStr;
// }

// console.log(repeat('abc', 3)); 

// Built in method
// 'abcd'.repeat(3); // "abcdabcdabcd"

// 18. String StartsWith
// function startsWith(string, searchString) {
//   for (let i = 0; i < searchString.length; i += 1) {
//     if (string[i] !== searchString[i]) {
//       return false;
//     }
//   }
//   return true;
// }
// let str = 'We put comprehension and mastery above all else';
// let longerString = 'We put comprehension and mastery above all else!';
// console.log(startsWith(str, longerString)); 

// Built in method
// str.startsWith('We') // true

// 19. Converting Strings to Lower Case
// function toLowerCase(string) {
//   const CONVERSION = 32;
//   let tempStr = '';

//   for(let i = 0; i < string.length; i += 1) {
//     let charCode = string.charCodeAt(i);

//     if (string[i] >= 'A' && string[i] <= 'Z') {
//       charCode += CONVERSION;
//     }

//     tempStr += String.fromCharCode(charCode);
//   }

//   return tempStr;  
// }

// console.log(toLowerCase('123'));

// Built in method
// 'miXedCase1Word'.toLowerCase();  // returns "mixedcase1word"
// 'miXedCase1Word'.toUpperCase();  // returns "MIXEDCASE1WORD"

// 20. Substring(1)
// function substr(string, start, length) {
//   if(start < 0) {
//     start += string.length;
//   } 
//   let newStr = '';

//   for (let i = start; i < start + length; i += 1) {
//     if (i >= string.length) {
//       break;
//     }
//     newStr += string[i];
//   }

//   return newStr;
// }

// let string = 'hello world';
// console.log(substr(string, 8, 2));

// Built in method
// string.substr(2, 4); // "llo "

// 21. Substring(2)
// function substring(string, start, end) {
//   if (end === undefined) {
//     end = string.length;
//   }

//   if (start < 0 || isNaN(start)) {
//     start = 0;
//   }

//   if (end < 0 || isNaN(end)) {
//     end = 0;
//   }

//   if (start > end) {
//     [start, end] = [end, start];
//   }

//   if (start > string.length) {
//     start = string.length;
//   }
  
//   if (end > string.length) {
//     end = string.length;
//   }

//   let newStr = '';
//   for (let i = start; i < end; i += 1) {
//     newStr += string[i];
//   }
  
//   return newStr;
// }

// let string = 'hello world';
// console.log(substring(string, 'a'));

// Built in method

// string.substring(2, 4); // "ll"

