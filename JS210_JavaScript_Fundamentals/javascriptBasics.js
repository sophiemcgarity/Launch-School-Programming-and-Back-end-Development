// 7. Convert a String to a Number
// function stringToInteger(string) {
//   const DIGITS = {
//     '0': 0, '1': 1, '2': 2, '3': 3, '4': 4,
//     '5': 5, '6': 6, '7': 7, '8': 8, '9': 9,
//   };
//   let numbers = [];
//   let chars = string.split('');
//   for (char in chars) {
//     numbers.push(DIGITS[string[char]]);
//   }
//   let total = 0;
//   for (let i = 0; i < numbers.length; i += 1) {
//     total = (10 * total) + numbers[i]
//   }

//   console.log(total);
// }

// stringToInteger('4321');

// console.log(parseInt('4321', 10));

// 8. Convert a String to a Signed Number
// function stringToSignedInteger(string) {
//   const DIGITS = {
//     '0': 0, '1': 1, '2': 2, '3': 3, '4': 4,
//     '5': 5, '6': 6, '7': 7, '8': 8, '9': 9,
//   };

//   let signed = false;
//   let numbers = [];
//   let chars = string.split('');

//   if (chars[0] === '-') {
//     signed = true;
//     chars = chars.slice(1);
//   } 
  
//   if (chars[0] === '+') {
//     chars = chars.slice(1);
//   }

//   for (char in chars) {
//     numbers.push(DIGITS[chars[char]]);
//   }

//   let total = 0;
//   for (let i = 0; i < numbers.length; i += 1) {
//     total = (10 * total) + numbers[i]
//   }

//   signed ? console.log(-total) : console.log(total);
// }

// stringToSignedInteger('+4321'); 

// 9. Convert a Number to a String
// function integerToString(integer) {
//   const DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
//   let numbers = [];
  
//   while (integer > 0) {
//     numbers.push(DIGITS[integer % 10])
//     integer = Math.floor(integer / 10)
//   }

//   return numbers.reverse().join('');
// }

// 10. Convert a Signed Number to a String
// function signedIntegerToString(integer) {
//   if (integer < 0) {
//     return '-' + integerToString(-integer);
//   } else if (integer > 0) {
//     return '+' + integerToString(integer);
//   } else {
//     return integerToString(integer);
//   }
// }

// console.log(signedIntegerToString(-4321));
