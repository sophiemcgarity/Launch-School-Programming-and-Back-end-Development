// let readlineSync = require('readline-sync');

// 1. Odd Numbers
// function logOdd(limit) {
//   let i = 1;
//   while (i <= limit) {
//     console.log(i);
//     i += 2;
//   }
// }

// logOdd(15);

// 2. Even Numbers
// function logEven() {
//   for (let i = 2; i <= 99; i += 2) {
//     console.log(i);
//   }
// }

// logEven();

// 3. How Big is the Room
// function roomSize() {
//   let inputType = readlineSync.question('Would you like to calculate using feet or meters? ')
//   let length = readlineSync.question(`Enter the length of the room in ${inputType}: `);
//   let width = readlineSync.question(`Enter the length of the room in ${inputType}: `);

//   length = parseInt(length, 10);
//   width = parseInt(width, 10);

//   if (inputType === 'feet') {
//     let squareFeet = length * width;
//     console.log(`The area of the room is ${squareFeet.toFixed(2)} square feet.`);
//   } else if (inputType === 'meters') {
//     let squareMeters = length * width;
//     console.log(`The area of the room is ${squareMeters.toFixed(2)} square meters.`);
//   } else {
//     console.log('Invalid input type.')
//   }
// }

// roomSize();

// 4. Tip Calculator
// let totalBill = readlineSync.question('What is the bill? ');
// let tipPercentage = readlineSync.question('What is the tip percentage? ');

// totalBill = parseFloat(totalBill, 10);
// tipPercentage = parseFloat(tipPercentage, 10);

// let totalTip = totalBill * (tipPercentage / 100);
// let totalWithTip = totalBill + totalTip;

// console.log(`The tip is $${totalTip.toFixed(2)}`);
// console.log(`The total is $${totalWithTip.toFixed(2)}`);

// 5. Sum or Product of Consecutive Integers
// function computeSum(number) {
//   let sum = 0;

//   for (let i = 1; i <= number; i += 1) {
//     sum += i;
//   }

//   return sum;
// }

// function computeProduct(number) {
//   let product = 1;

//   for (let i = 1; i <= number; i += 1) {
//     product *= i;
//   }

//   return product;
// }

// let num = readlineSync.question('Please enter an integer greater than 0: ');
// num = parseInt(num);

// while (isNaN(num)) {
//   console.log('Only integers are valid inputs');
//   num = readlineSync.question('Please enter an integer greater than 0: ');
//   num = parseInt(num);
// }

// let operation = readlineSync.question('Enter "s" to compute the sum, or "p" to compute the product. ');

// while (operation !== 's' && operation !== 'p')  {
//   console.log('Only "s" and "p" are valid inputs');
//   operation = readlineSync.question('Enter "s" to compute the sum, or "p" to compute the product. ');
// }

// if (operation === 's') {
//   console.log(`The sum of the integers between 1 and ${num} is ${computeSum(num)}.`);
// } else if (operation === 'p') {
//   console.log(`The product of the integers between 1 and ${num} is ${computeProduct(num)}.`);
// } else {
//   console.log('Unknown operation.')
// }

// Further exploration
// function computeSum(numbers) {
//   let reducer = (accumulator, currentValue) => accumulator + currentValue;
//   return numbers.reduce(reducer);
// }

// console.log(computeSum([1, 2, 3, 4]));

// 6. Short Long Short
// function shortLongShort(str1, str2) {
//   let short;
//   let long;

//   if (str1.length > str2.length) {
//     short = str2;
//     long = str1;
//   } else if (str1.length < str2.length) {
//     short = str1;
//     long = str2;
//   }

//   console.log(short + long + short);
// }

// shortLongShort('', 'xyz');  

// 7. Leap Years Part 1
// function isLeapYear(year) {
//   if (year % 400 === 0) return true;
//   if (year % 4 === 0 && year % 100 === 0) return false;
//   if (year % 4 === 0) return true;
//   return false;
// }

// console.log(isLeapYear(1));

// 8. Leap Years Part 2
// function isLeapYear(year) {
//   if (year <= 1752 && year % 4 === 0) {
//     return true;
//   } else if (year % 400 === 0) {
//     return true;
//   } else if (year % 4 === 0 && year % 100 === 0) {
//     return false;
//   } else if (year % 4 === 0) {
//     return true;
//   } else {
//     return false;
//   }
// }  

// console.log(isLeapYear(1752)); 

// 9. Multiples of 3 and 5
// function multisum(number) {
//   let sum = 0;
//   for (let i = 1; i <= number; i += 1) {
//     if (i % 3 === 0 || i % 5 === 0) {
//       sum += i;
//     }
//   }
//   return sum;
// }

// console.log(multisum(5));

// 10. UTF-16 String Value
// function utf16Value(string) {
//   let sum = 0;

//   for (let i = 0; i < string.length; i += 1) {
//     sum += string.charCodeAt(i);
//   }

//   return sum;
// }

// console.log(utf16Value('Launch School'));